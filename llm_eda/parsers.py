# -*- coding: utf-8 -*-
"""EDA 报告解析器: 把 yosys/OpenSTA/OpenROAD 报告转成结构化指标"""
import re, os

def parse_yosys_stat(rpt):
    """解析 yosys stat -liberty 输出 (stat_full.rpt)"""
    m = {}
    if not os.path.exists(rpt):
        return m
    text = open(rpt, encoding="utf-8", errors="ignore").read()
    mm = re.search(r"Chip area for top module.*?:\s*([\d.]+)", text)
    if mm:
        m["total_area_um2"] = float(mm.group(1))
    mm = re.search(r"of which used for sequential elements: ([\d.]+)", text)
    if mm:
        m["seq_area_um2"] = float(mm.group(1))
    # 模块级面积列表
    areas = [float(x) for x in re.findall(r"Chip area for module.*?:\s*([\d.]+)", text)]
    if areas:
        m["module_count"] = len(areas)
        m["sum_module_area_um2"] = round(sum(areas), 1)
    return m

def parse_sta_report(rpt):
    """解析 OpenSTA 时序报告 (run_sta.tcl 输出)"""
    m = {"wns": None, "tns": None, "clock": None, "period": None,
         "startpoint": None, "endpoint": None}
    if not os.path.exists(rpt):
        return m
    text = open(rpt, encoding="utf-8", errors="ignore").read()
    mm = re.search(r"wns(?: max)?\s*[:=]?\s*([-\d.]+)", text, re.I)
    if mm: m["wns"] = float(mm.group(1))
    mm = re.search(r"tns(?: max)?\s*[:=]?\s*([-\d.]+)", text, re.I)
    if mm: m["tns"] = float(mm.group(1))
    mm = re.search(r"period\s*([\d.]+)", text)
    if mm: m["period"] = float(mm.group(1))
    return m

def parse_openroad_log(log, metrics):
    """解析 OpenROAD 日志中的指标行"""
    out = {}
    if not os.path.exists(log):
        return out
    text = open(log, encoding="utf-8", errors="ignore").read()
    for name in metrics:
        mm = re.search(rf"{name}\s*[:=]\s*([-\d.]+)", text)
        if mm:
            out[name] = float(mm.group(1))
    return out

def summarize(metrics):
    """指标 -> 一行中文摘要"""
    if not metrics:
        return "无指标数据"
    parts = []
    for k, v in metrics.items():
        if v is not None:
            parts.append(f"{k}={v}")
    return ", ".join(parts)
