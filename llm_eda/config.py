# -*- coding: utf-8 -*-
"""LLM 接口配置: 支持 OpenAI 兼容 API / 本地 Ollama / 离线规则模式"""
import os, json

def load_config(path="llm_eda/config.json"):
    cfg = {
        "mode": "offline",            # offline | openai | ollama
        "openai": {
            "base_url": "https://api.openai.com/v1",
            "api_key": "",
            "model": "gpt-4o",
        },
        "ollama": {
            "base_url": "http://localhost:11434",
            "model": "qwen2.5-coder:14b",
        },
        "max_iterations": 5,
        "slack_threshold_ps": 0.0,    # 时序收敛目标
    }
    if os.path.exists(path):
        with open(path) as f:
            cfg.update(json.load(f))
    return cfg

def llm_call(cfg, system, user, temperature=0.2):
    """统一 LLM 调用入口: 返回文本, 失败时抛异常"""
    import urllib.request
    if cfg["mode"] == "offline":
        raise RuntimeError("offline mode: no LLM endpoint (use knowledge base)")
    if cfg["mode"] == "openai":
        url = cfg["openai"]["base_url"].rstrip("/") + "/chat/completions"
        key = cfg["openai"]["api_key"] or os.environ.get("OPENAI_API_KEY", "")
        model = cfg["openai"]["model"]
    else:
        url = cfg["ollama"]["base_url"].rstrip("/") + "/api/chat"
        key, model = "", cfg["ollama"]["model"]
    body = {
        "model": model,
        "messages": [{"role": "system", "content": system},
                     {"role": "user", "content": user}],
        "temperature": temperature,
    }
    req = urllib.request.Request(url, data=json.dumps(body).encode(),
                                 headers={"Content-Type": "application/json",
                                          "Authorization": f"Bearer {key}"})
    with urllib.request.urlopen(req, timeout=120) as r:
        data = json.loads(r.read())
    if cfg["mode"] == "openai":
        return data["choices"][0]["message"]["content"]
    return data["message"]["content"]
