# -*- coding: utf-8 -*-
"""llm_eda CLI: 分析报告 / 跑闭环优化 / 生成诊断报告"""
import argparse, json, os, sys
from .config import load_config
from .agent import diagnose, optimize_loop
from .parsers import parse_yosys_stat, parse_sta_report, summarize

def cmd_analyze(args):
    cfg = load_config()
    stage = args.stage
    metrics = {}
    excerpt = ""
    if stage == "SYN":
        metrics = parse_yosys_stat(args.report)
        if os.path.exists(args.report):
            excerpt = open(args.report, encoding="utf-8", errors="ignore").read()
    elif stage == "TIMING":
        metrics = parse_sta_report(args.report)
        if os.path.exists(args.report):
            excerpt = open(args.report, encoding="utf-8", errors="ignore").read()
    elif os.path.exists(args.report):
        excerpt = open(args.report, encoding="utf-8", errors="ignore").read()
    print(f"指标: {summarize(metrics)}")
    diag = diagnose(cfg, stage, metrics, excerpt, use_llm=not args.no_llm)
    print(json.dumps(diag, ensure_ascii=False, indent=2))

def cmd_optimize(args):
    cfg = load_config()
    history = optimize_loop(
        cfg, args.stage, args.run, args.reports.split(","),
        args.metrics.split(",") if args.metrics else [],
        cwd=args.cwd, fix_dir=args.fix_dir,
        max_iter=args.iterations, use_llm=not args.no_llm)
    out = args.json_out or f"llm_eda/history_{args.stage}.json"
    with open(out, "w") as f:
        json.dump(history, f, ensure_ascii=False, indent=2)
    print(f"迭代历史已写入 {out}")

def main():
    ap = argparse.ArgumentParser(prog="llm_eda",
        description="LLM 驱动的 RTL2GDS 后端优化 Agent")
    sub = ap.add_subparsers(dest="cmd", required=True)
    a = sub.add_parser("analyze", help="单次分析报告")
    a.add_argument("--stage", required=True,
                   choices=["SYN", "APR", "TIMING", "PV", "IREM", "LEC", "VCLP"])
    a.add_argument("--report", required=True, help="报告文件路径")
    a.add_argument("--no-llm", action="store_true", help="仅用规则引擎")
    a.set_defaults(func=cmd_analyze)

    o = sub.add_parser("optimize", help="闭环迭代优化")
    o.add_argument("--stage", required=True,
                   choices=["SYN", "APR", "TIMING", "PV", "IREM", "LEC", "VCLP"])
    o.add_argument("--run", required=True, help="流程步骤执行命令")
    o.add_argument("--reports", required=True, help="逗号分隔的报告文件")
    o.add_argument("--metrics", default="", help="逗号分隔的指标名")
    o.add_argument("--cwd", default=".")
    o.add_argument("--fix-dir", default="flow/fixes")
    o.add_argument("--iterations", type=int, default=None)
    o.add_argument("--json-out", default=None)
    o.add_argument("--no-llm", action="store_true")
    o.set_defaults(func=cmd_optimize)

    args = ap.parse_args()
    args.func(args)

if __name__ == "__main__":
    main()
