"""坑知识库匹配器: 日志文本 -> 命中坑(诊断+修复模板)"""
import re, yaml, os

def load(path=None):
    path = path or os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "kb", "pitfalls.yaml")
    with open(path, encoding="utf-8") as f:
        return yaml.safe_load(f)

def match(text, pitfalls=None):
    pitfalls = pitfalls or load()
    hits = []
    for p in pitfalls:
        score = 0
        for s in p["symptom"]:
            if re.search(s, text, re.IGNORECASE):
                score += 1
        if score:
            hits.append({"id": p["id"], "title": p["title"], "score": score,
                         "diagnosis": p["diagnosis"], "fix": p["fix"],
                         "verify": p["verify"], "stage": p["stage"]})
    return sorted(hits, key=lambda h: -h["score"])

if __name__ == "__main__":
    import glob, sys
    for f in sys.argv[1:]:
        log = open(f, encoding="utf-8", errors="ignore").read()
        hits = match(log)
        print(f"== {f}: {len(hits)} 命中")
        for h in hits:
            print(f"   [{h['id']}] score={h['score']} {h['title']}")
