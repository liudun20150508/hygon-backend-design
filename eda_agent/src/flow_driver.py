#!/usr/bin/env python3
"""EDA-Agent Flow Driver —— 串起整个数字后端流程

跑阶段脚本 → 实时写 console 日志 → 解析指标 → 渲染 die → 每步写 progress.json
macapp(SwiftUI) 每 1s 轮询 progress.json 渲染; 阶段失败且坑库未命中时,
调 Claude Code SDK (claude -p) 做根因诊断 —— 这就是"agent 即软件核心"。

用法:
  python3 flow_driver.py list                          # 列出可用 flow
  python3 flow_driver.py run vortex_llm               # 跑全流程
  python3 flow_driver.py run vortex_llm --from 2      # 从第 2 阶段开始
  python3 flow_driver.py run vortex_llm --stage 3     # 只跑第 3 阶段
  python3 flow_driver.py run vortex_llm --dry-run     # 只走状态机不执行(演示)
  python3 flow_driver.py status vortex_llm            # 打印当前进度
"""
import argparse, glob, json, os, re, subprocess, sys, time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import agent_loop, report_parser  # noqa: E402

ROOT = os.path.abspath(os.path.join(HERE, "..", ".."))
OR = os.environ.get("OPENROAD_BIN", os.path.expanduser("~/bin/openroad"))

# ---------------------------------------------------------------- flow 配置
FLOWS = {
    "vortex_llm": {
        "design": "Vortex-LLM @ SKY130",
        "workdir": os.path.join(ROOT, "build/vortex_llm/apr"),
        "console": "flow.console.log",
        "stages": [
            ("00_synth",     "yosys -q -c ../out/synth_sky130.ys",          "logs/00_synth.log"),
            ("01_floorplan", f"{OR} -exit 01_floorplan.tcl",               "logs/01_floorplan.log"),
            ("02_place",     f"{OR} -exit 02_place.tcl",                   "logs/02_place.log"),
            ("03_cts",       f"{OR} -exit 03_cts.tcl",                     "logs/03_cts.log"),
            ("04_route",     f"{OR} -exit 04_route.tcl",                   "logs/04_route.log"),
            ("05_sta",       f"{OR} -exit 05_sta.tcl",                     "logs/05_sta.log"),
        ],
    },
    # base/gfx 结构不同, 暂未纳入 — 加 flow 只需在下面补 stages 即可
}

# ---------------------------------------------------------------- 指标解析
def _scan_dirs(workdir):
    """工作目录 + 上级目录 (apr/ 的报告在 ../reports/ 或 ../../reports/)"""
    dirs = []
    w = os.path.abspath(workdir)
    for _ in range(4):
        dirs.append(w + "/")
        parent = os.path.dirname(w)
        if parent == w or parent == "/": break
        w = parent
    return dirs

def collect_metrics(workdir):
    """扫描工作区报告 → 统一指标 dict (键名对齐 macapp MetricsView)"""
    m, dirs = {}, _scan_dirs(workdir)
    def find(*pats):
        for d in dirs:
            for p in pats:
                for f in glob.glob(d + p):
                    return f
        return None
    # STA: 05_sta.log 里 report_worst_slack/wns/tns 的输出 (OpenSTA 文本格式)
    f = find("logs/05_sta.log", "05_sta.log", "reports/sta.rpt")
    if f:
        sta = report_parser.parse_sta(f)
        if "wns_max" in sta: m["WNS"] = f"{sta['wns_max']:.3f}"
        elif "worst_slack_max" in sta: m["WNS"] = f"{sta['worst_slack_max']:.3f}"
        if "tns_max" in sta: m["TNS"] = f"{sta['tns_max']:.1f}"
        if "worst_slack_min" in sta: m["Hold"] = f"{sta['worst_slack_min']:.3f}"
    # 面积 / 时序单元占比: yosys stat (sky130 版优先)
    f = find("reports/stat_sky130_full.rpt", "reports/stat_full.rpt")
    if f:
        y = report_parser.parse_yosys_stat(f)
        if "cell_area_um2" in y: m["Area"] = f"{y['cell_area_um2']:.0f} μm²"
        if "seq_ratio_pct" in y: m["FF%"] = f"{y['seq_ratio_pct']:.1f}%"
    # 单元总数
    f = find("reports/stat_sky130_full.rpt", "reports/stat_full.rpt")
    if f:
        t = open(f, encoding="utf-8", errors="ignore").read()
        r = re.search(r"Number of cells:\s+(\d+)", t)
        if r: m["Cells"] = f"{int(r.group(1)):,}"
    # SRAM 面积
    f = find("reports/sram_sky130_area.rpt", "reports/sram_area.rpt")
    if f:
        t = open(f, encoding="utf-8", errors="ignore").read().strip()
        if t: m["SRAM"] = t.splitlines()[-1][:40]
    return m

# ---------------------------------------------------------------- die 渲染
def render_die(workdir):
    """找最新 DEF/GDS → klayout 渲染 PNG → 返回路径 (无 klayout 则 None)"""
    kl = os.path.expanduser("~/bin/klayout")
    if not os.path.exists(kl):
        return None
    cands = glob.glob(workdir + "/*.def") + glob.glob(workdir + "/*.gds")
    if not cands:
        return None
    src = max(cands, key=os.path.getmtime)
    out = os.path.join(workdir, "die.png")
    try:
        r = subprocess.run(
            f"{kl} -b -r {HERE}/render_die.py {src} {out}",
            shell=True, timeout=120, capture_output=True)
        return out if r.returncode == 0 and os.path.exists(out) else None
    except Exception:
        return None

# ---------------------------------------------------------------- progress.json
def read_progress(workdir):
    p = os.path.join(workdir, "progress.json")
    if os.path.exists(p):
        try: return json.load(open(p))
        except Exception: pass
    return {"log_line_offset": 0}

def write_progress(workdir, session):
    """原子写 progress.json, 保留 app 侧已读偏移(否则 console 会重复读)"""
    prev = read_progress(workdir)
    session.setdefault("log_line_offset", prev.get("log_line_offset", 0))
    tmp = os.path.join(workdir, "progress.json.tmp")
    with open(tmp, "w") as f:
        json.dump(session, f, ensure_ascii=False, indent=1)
    os.replace(tmp, os.path.join(workdir, "progress.json"))
    os.makedirs(os.path.join(workdir, "logs"), exist_ok=True)

# ---------------------------------------------------------------- 阶段执行
def run_stage(cmd, logfile, console_fh, cwd):
    """执行阶段命令, stdout 实时 tee 到 console 日志; 返回 (code, 用时)"""
    os.makedirs(os.path.dirname(logfile) or ".", exist_ok=True)
    t0 = time.time()
    p = subprocess.Popen(cmd, shell=True, cwd=cwd,
                         stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                         text=True, bufsize=1)
    with open(logfile, "w") as lf:
        assert p.stdout is not None
        for line in p.stdout:
            lf.write(line)
            if console_fh:
                console_fh.write(line); console_fh.flush()
    p.wait()
    return p.returncode, round(time.time() - t0, 1)

def claude_diagnose(stage_name, logfile):
    """失败且坑库未命中 → Claude Code SDK 诊断 (print 模式, 即 SDK 同引擎)"""
    tail = "".join(open(logfile, encoding="utf-8", errors="ignore").readlines()[-60:])
    prompt = (
        f"你是数字后端 EDA 诊断专家。阶段 [{stage_name}] 失败, 日志尾部如下。\n"
        f"请给出: 1) 根因(一句话) 2) 修复命令(TCL/shell, 可直接粘贴) 3) 风险提示。\n"
        f"只输出 JSON: {{\"root_cause\":\"\",\"fix\":\"\",\"risk\":\"\"}}\n"
        f"===== 日志尾部 =====\n{tail}")
    try:
        r = subprocess.run(["claude", "-p", prompt, "--output-format", "json"],
                           timeout=180, capture_output=True, text=True)
        out = r.stdout.strip()
        try:
            d = json.loads(out)
            return f"根因: {d.get('root_cause','?')}\n修复: {d.get('fix','?')}"
        except Exception:
            return out[-800:] or r.stderr[-400:]
    except Exception as e:
        return f"claude 诊断不可用: {e}"

# ---------------------------------------------------------------- 主流程
def run_flow(name, stage=None, from_idx=0, dry=False, no_llm=False):
    cfg = FLOWS[name]
    wd = cfg["workdir"]
    os.makedirs(os.path.join(wd, "logs"), exist_ok=True)
    console = os.path.join(wd, cfg["console"])

    stages = cfg["stages"]
    if stage is not None:
        stages = [stages[stage]]
        start = stage
    else:
        start = from_idx
        stages = stages[from_idx:]

    session = {
        "design": cfg["design"],
        "agent_status": "running",
        "stage": start,
        "stages": [{"name": n, "status": "pending"} for n, _, _ in cfg["stages"]],
        "metrics": read_progress(wd).get("metrics", {}),
        "die_image": "",
        "console_log": console,
    }
    for i in range(len(cfg["stages"])):
        if i < start: session["stages"][i]["status"] = "done"
    session["stages"][start]["status"] = "running"
    write_progress(wd, session)

    cfh = open(console, "a")
    ok_all = True
    for idx, (sname, cmd, log) in enumerate(stages, start=start):
        print(f"[{name}] ▶ {sname}: {cmd}", flush=True)
        cfh.write(f"\n### {time.strftime('%H:%M:%S')} stage {sname} ###\n"); cfh.flush()
        if dry:
            code, dt, tail = 0, 0.0, "(dry-run)"
        else:
            code, dt = run_stage(cmd, os.path.join(wd, log), cfh, wd)
            tail = "".join(open(os.path.join(wd, log), encoding="utf-8", errors="ignore").readlines()[-5:])
        agent_loop.record({"event": "stage", "flow": name, "stage": sname,
                           "exit": code, "time_s": dt, "log_tail": tail.strip()})
        if code == 0:
            session["stages"][idx]["status"] = "done"
            print(f"[{name}] ✓ {sname} 完成 ({dt}s)", flush=True)
        else:
            session["stages"][idx]["status"] = "error"
            session["agent_status"] = "error"
            session["stage"] = idx
            session["metrics"] = collect_metrics(wd)
            session["die_image"] = render_die(wd) or ""
            write_progress(wd, session)
            ok_all = False
            print(f"[{name}] ✗ {sname} 失败 (exit {code})", flush=True)
            if not no_llm:
                verdict = claude_diagnose(sname, os.path.join(wd, log))
                agent_loop.record({"event": "llm_diagnose", "flow": name,
                                   "stage": sname, "verdict": verdict[:500]})
                print("── Claude 诊断 ──\n" + verdict, flush=True)
            break
        session["metrics"] = collect_metrics(wd)
        session["die_image"] = render_die(wd) or session.get("die_image", "")
        session["stage"] = idx + 1 if idx + 1 < len(cfg["stages"]) else idx
        write_progress(wd, session)

    if ok_all:
        session["agent_status"] = "done"
        session["metrics"] = collect_metrics(wd)
        session["die_image"] = render_die(wd) or ""
        write_progress(wd, session)
        print(f"[{name}] ✅ 全流程完成", flush=True)
    cfh.close()

def show_status(name):
    cfg = FLOWS[name]
    s = read_progress(cfg["workdir"])
    print(json.dumps(s, ensure_ascii=False, indent=1))

# ---------------------------------------------------------------- CLI
def main():
    ap = argparse.ArgumentParser(description="EDA-Agent Flow Driver")
    sub = ap.add_subparsers(dest="cmd", required=True)
    p_run = sub.add_parser("run"); p_run.add_argument("flow")
    p_run.add_argument("--stage", type=int, help="只跑第 N 个阶段(0-based)")
    p_run.add_argument("--from", dest="from_idx", type=int, default=0, help="从第 N 个阶段开始")
    p_run.add_argument("--dry-run", action="store_true")
    p_run.add_argument("--no-llm", action="store_true", help="失败时不调 Claude 诊断")
    sub.add_parser("list")
    p_st = sub.add_parser("status"); p_st.add_argument("flow")
    a = ap.parse_args()

    if a.cmd == "list":
        for n, c in FLOWS.items():
            print(f"{n:14s} {c['design']}  ({len(c['stages'])} 阶段)")
        return
    if a.cmd == "status":
        show_status(a.flow); return
    if a.flow not in FLOWS:
        print(f"未知 flow: {a.flow}"); sys.exit(1)
    run_flow(a.flow, stage=a.stage, from_idx=a.from_idx,
             dry=a.dry_run, no_llm=a.no_llm)

if __name__ == "__main__":
    main()
