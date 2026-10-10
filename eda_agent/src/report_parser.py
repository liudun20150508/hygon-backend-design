"""报告解析器: 把 OpenSTA / Yosys / OpenROAD 报告解析为结构化指标。
   (AI 副驾能力 #1: 报告即服务 —— 工程师不用开三个工具读报告)"""
import re, json, glob, os

def parse_sta(path):
    """OpenSTA 报告: worst slack / wns / tns (setup) + hold"""
    m = {}
    t = open(path, encoding="utf-8", errors="ignore").read()
    def g(p, name):
        r = re.search(p, t)
        if r: m[name] = float(r.group(1))
    g(r"worst slack max\s+([-\d.]+)", "worst_slack_max")
    g(r"wns max\s+([-\d.]+)", "wns_max")
    g(r"tns max\s+([-\d.]+)", "tns_max")
    g(r"worst slack min\s+([-\d.]+)", "worst_slack_min")
    return m

def parse_yosys_stat(path):
    """yosys stat: 总面积 / 时序单元占比 / 实例数"""
    m = {}
    t = open(path, encoding="utf-8", errors="ignore").read()
    def g(p, name, cast=float):
        r = re.search(p, t)
        if r: m[name] = cast(r.group(1))
    r = re.search(r"Chip area for top module\s*'[^']*':\s*([\d.]+)", t)
    if r:
        m["cell_area_um2"] = float(r.group(1))
        seg = t[r.end():r.end()+300]
        r2 = re.search(r"([\d.]+)\s*\(([\d.]+)%\)", seg)
        if r2:
            m["seq_area_um2"] = float(r2.group(1))
            m["seq_ratio_pct"] = float(r2.group(2))
    g(r"^\s*(\d+)\s+_\\", "num_cells", int)  # 实例数近似
    return m

def parse_klayout_drc(path):
    """KLayout DRC 报告: 违规分类统计"""
    m = {"drc_total": 0, "drc_by_rule": {}}
    t = open(path, encoding="utf-8", errors="ignore").read() if os.path.exists(path) else ""
    for rule, cnt in re.findall(r"([A-Za-z][\w.]*):\s*(\d+)\s+violations?", t):
        m["drc_by_rule"][rule] = int(cnt); m["drc_total"] += int(cnt)
    return m

def parse_all(workspace):
    """扫描工作区常见报告路径, 返回合并指标"""
    w = workspace.rstrip("/") + "/"
    metrics = {}
    for pat, fn in [("reports/sta.rpt", parse_sta),
                    ("reports/stat_full.rpt", parse_yosys_stat),
                    ("out/sta.rpt", parse_sta)]:
        for f in glob.glob(w + pat):
            metrics.update(fn(f))
            metrics.setdefault("_sources", []).append(f)
    return metrics

# ---------------------------------------------------------------- 工具注册表
# 每种 EDA 工具的解析器挂在这里, 上层(flow_driver/GUI/Agent)只认统一 schema。
# 将来接商业工具: 实现解析函数后注册即可, 编排层与 GUI 零改动。
#   PT:       "worst slack" / "critical path" 文本格式
#   Innovus:  "Slack" / "Total Negative Slack" 文本格式
TOOL_PARSERS = {
    "openroad": parse_sta,        # OpenSTA / OpenROAD (当前主力)
    "yosys": parse_yosys_stat,
    "klayout": parse_klayout_drc,
    # "primetime": parse_pt_report,      # TODO: Synopsys PrimeTime
    # "innovus": parse_innovus_report,   # TODO: Cadence Innovus
}

def parse_report(path, tool=None):
    """按工具名(或文件名启发式)路由解析, 返回统一 schema 指标"""
    if tool and tool in TOOL_PARSERS:
        return TOOL_PARSERS[tool](path)
    base = os.path.basename(path)
    if "stat" in base:                # 先匹配 stat, 否则 "stat" 会被 "sta" 截胡
        return parse_yosys_stat(path)
    if "sta" in base or "timing" in base.lower():
        return parse_sta(path)
    if "drc" in base.lower():
        return parse_klayout_drc(path)
    return {}

if __name__ == "__main__":
    import sys
    ws = sys.argv[1] if len(sys.argv) > 1 else "build/vortex_base"
    print(json.dumps(parse_all(ws), indent=1, ensure_ascii=False))
