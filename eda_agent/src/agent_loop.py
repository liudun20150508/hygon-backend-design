"""AI 副驾核心循环: 跑阶段 → 查坑 → 解析指标 → 记录决策 → 回归对比
   (能力 #4: 决策可解释 —— 每个动作记录 诊断→动作→结果)"""
import json, os, subprocess, time, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import kb, report_parser

STATE_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "state")
DECISIONS = os.path.join(STATE_DIR, "decisions.jsonl")

def record(decision: dict):
    os.makedirs(STATE_DIR, exist_ok=True)
    d = {"ts": time.strftime("%Y-%m-%d %H:%M:%S"), **decision}
    with open(DECISIONS, "a", encoding="utf-8") as f:
        f.write(json.dumps(d, ensure_ascii=False) + "\n")
    return d

def run_stage(workspace, script, logfile, cwd=None):
    """执行一个阶段脚本, 返回 (exit_code, log_tail)"""
    os.makedirs(os.path.dirname(logfile), exist_ok=True)
    t0 = time.time()
    r = subprocess.run(f"bash {script} > {logfile} 2>&1", shell=True, cwd=cwd or workspace)
    dt = time.time() - t0
    tail = "".join(open(logfile, encoding="utf-8", errors="ignore").readlines()[-5:])
    return r.returncode, tail, round(dt, 1)

def stage_loop(workspace, stages, dry_run=False):
    """阶段循环: 每个阶段执行→查坑→记录→回归"""
    baseline = report_parser.parse_all(workspace)
    record({"event": "run_start", "workspace": workspace,
            "metrics_baseline": {k: v for k, v in baseline.items() if k != "_sources"}})
    for name, script, log in stages:
        code, tail, dt = (0, "(dry-run)", 0) if dry_run else run_stage(workspace, script, log)
        pitfalls = kb.match(tail) if code != 0 else []
        metrics = report_parser.parse_all(workspace)
        record({"event": "stage", "stage": name, "exit": code, "time_s": dt,
                "pitfalls_hit": [p["id"] for p in pitfalls],
                "metrics_after": {k: v for k, v in metrics.items() if k != "_sources"},
                "log_tail": tail.strip()})
        if pitfalls:
            p = pitfalls[0]
            record({"event": "pitfall", "pitfall": p["id"], "title": p["title"],
                    "diagnosis": p["diagnosis"], "fix": p["fix"]})
        if code != 0 and not pitfalls:
            print(f"[{name}] 失败且坑库未命中 -> 需人工/LLM 诊断"); break
    print(f"决策记录: {DECISIONS}")

def show_decisions(n=20):
    if not os.path.exists(DECISIONS): return []
    rows = []
    for line in open(DECISIONS, encoding="utf-8"):
        try: rows.append(json.loads(line))
        except: pass
    return rows[-n:]

if __name__ == "__main__":
    ws = sys.argv[1] if len(sys.argv) > 1 else "build/vortex_base"
    # 示例: 三阶段演示 (dry-run 只走决策记录不执行)
    stages = [("01_floorplan", "apr/01_floorplan.tcl", "logs/01.log"),
              ("02_place", "apr/02_place.tcl", "logs/02.log")]
    stage_loop(ws, stages, dry_run=True)
