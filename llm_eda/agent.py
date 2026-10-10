# -*- coding: utf-8 -*-
"""EDA Agent 主循环: 解析报告 -> 诊断(LLM/规则) -> 生成修复 -> 应用 -> 重跑

类比: ChipNeMo(领域 LLM 诊断) + DSO.ai(闭环迭代优化) 的开源实现
"""
import json, os, re, subprocess, sys
from .config import load_config, llm_call
from .prompts import SYSTEM_EDA, analyze_prompt
from .knowledge import WORKLOAD_KNOWLEDGE, RULES

def _rule_diagnose(stage, metrics, report_excerpt):
    """离线规则引擎 (LLM 不可用时的 fallback)"""
    text = (report_excerpt or "") + " " + json.dumps(metrics, ensure_ascii=False)
    text_l = text.lower()
    hits = []
    for r in RULES:
        if r["stage"] != stage:
            continue
        if any(s.lower() in text_l for s in r["symptom"]):
            hits.append(r)
    if not hits:
        return {"diagnosis": f"{stage} 阶段指标未见已知模式, 建议人工复查报告",
                "fixes": [], "risk": "规则库未覆盖"}
    best = hits[0]
    return {"diagnosis": f"规则库命中: {best['symptom']}",
            "fixes": [{"stage": stage, "action": best["action"],
                       "expected_effect": "按知识库经验值预估"}],
            "risk": "规则库修复, 建议用真实 LLM 复核"}

def diagnose(cfg, stage, metrics, report_excerpt, use_llm=True):
    """诊断入口: 优先 LLM, 失败回退规则引擎"""
    notes = "\n".join(
        f"- {w['workload']}: {'; '.join(w['actions'][:2])}" for w in WORKLOAD_KNOWLEDGE)
    if use_llm and cfg.get("mode") != "offline":
        try:
            resp = llm_call(cfg, SYSTEM_EDA,
                            analyze_prompt(stage, json.dumps(metrics, ensure_ascii=False),
                                           report_excerpt or "", notes))
            m = re.search(r"\{.*\}", resp, re.S)
            if m:
                return json.loads(m.group(0))
        except Exception as e:
            print(f"[agent] LLM 调用失败({e}), 回退规则引擎")
    return _rule_diagnose(stage, metrics, report_excerpt)

def extract_fix_actions(diag):
    """从诊断结果提取 (stage, action) 列表"""
    return [(f["stage"], f["action"]) for f in diag.get("fixes", [])]

def apply_fix(fix_dir, stage, action):
    """把修复动作写入 fix 目录供人工/脚本应用 (安全起见不自动改约束)"""
    os.makedirs(fix_dir, exist_ok=True)
    fname = os.path.join(fix_dir, f"{stage}_fix.txt")
    with open(fname, "a") as f:
        f.write(f"## {stage}\n{action}\n\n")
    return fname

def run_flow_step(stage, cmd, cwd):
    """执行一个流程步骤并返回 (returncode, stdout tail)"""
    try:
        p = subprocess.run(cmd, shell=True, cwd=cwd,
                           capture_output=True, text=True, timeout=7200)
        tail = "\n".join((p.stdout or "").splitlines()[-40:])
        return p.returncode, tail
    except subprocess.TimeoutExpired:
        return -1, "TIMEOUT"

def optimize_loop(cfg, stage, run_cmd, report_files, metric_keys,
                  cwd=".", fix_dir="flow/fixes", max_iter=None, use_llm=True):
    """闭环优化: 跑工具 -> 解析报告 -> 诊断 -> 写修复 -> 重跑, 直至收敛或达迭代上限

    返回迭代历史 (list of dict), 可直接生成报告
    """
    max_iter = max_iter or cfg.get("max_iterations", 5)
    history = []
    for it in range(max_iter):
        print(f"\n=== [iter {it+1}/{max_iter}] {stage} ===")
        rc, log_tail = run_flow_step(stage, run_cmd, cwd)
        metrics = {}
        excerpt = log_tail
        for rf in report_files:
            if os.path.exists(rf):
                excerpt += "\n" + open(rf, encoding="utf-8", errors="ignore").read()[-1500:]
        # 指标提取(通用: 从日志尾部抓数字)
        for k in metric_keys:
            mm = re.search(rf"{k}\s*[:=]\s*([-\d.]+)", log_tail)
            if mm:
                metrics[k] = float(mm.group(1))
        diag = diagnose(cfg, stage, metrics, excerpt, use_llm=use_llm)
        fixes = extract_fix_actions(diag)
        applied = []
        for st, act in fixes:
            applied.append(apply_fix(fix_dir, st, act))
        entry = {"iteration": it + 1, "stage": stage, "returncode": rc,
                 "metrics": metrics, "diagnosis": diag["diagnosis"],
                 "fixes_applied": applied, "risk": diag.get("risk", "")}
        history.append(entry)
        print(f"[iter {it+1}] rc={rc} metrics={metrics}")
        print(f"[iter {it+1}] 诊断: {diag['diagnosis']}")
        for f in applied:
            print(f"[iter {it+1}] 修复已记录: {f}")
        # 收敛判定: rc==0 且时序 WNS >= 0 (或达到迭代上限)
        if rc == 0 and metrics.get("wns", 0) >= cfg.get("slack_threshold_ps", 0):
            print(f"[iter {it+1}] 收敛: WNS={metrics.get('wns')}")
            break
        if not fixes:
            print("[agent] 无修复建议, 终止迭代")
            break
    return history

if __name__ == "__main__":
    print("llm_eda.agent — 用法见 cli.py")
