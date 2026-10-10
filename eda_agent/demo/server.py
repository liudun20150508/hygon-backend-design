"""演示面板服务: 读取决策记录+解析报告, 输出单页 HTML (零依赖, 内网可用)"""
import json, os, sys, html
from http.server import HTTPServer, BaseHTTPRequestHandler
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "src"))
import report_parser, agent_loop

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
WS = {
    "base_nangate45": os.path.join(ROOT, "..", "build", "vortex_base"),
    "llm_sky130":     os.path.join(ROOT, "..", "build", "vortex_llm"),
}
PAGE = open(os.path.join(os.path.dirname(os.path.abspath(__file__)), "index.html"), encoding="utf-8").read()

class H(BaseHTTPRequestHandler):
    def do_GET(self):
        data = {
            "metrics": {k: report_parser.parse_all(v) for k, v in WS.items()},
            "decisions": agent_loop.show_decisions(200),
        }
        body = PAGE.replace("__DATA__", json.dumps(data, ensure_ascii=False)).encode("utf-8")
        self.send_response(200); self.send_header("Content-Type", "text/html; charset=utf-8")
        self.send_header("Content-Length", str(len(body))); self.end_headers()
        self.wfile.write(body)
    def log_message(self, *a): pass

if __name__ == "__main__":
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 8080
    print(f"AI 副驾演示面板: http://localhost:{port}   (Ctrl+C 退出)")
    HTTPServer(("0.0.0.0", port), H).serve_forever()
