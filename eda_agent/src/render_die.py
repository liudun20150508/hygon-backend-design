#!/usr/bin/env python3
"""渲染最新 DEF/GDS → PNG (KLayout Python 绑定, headless)

用法: ~/bin/klayout -b -r render_die.py <def|gds> <out.png>
"""
import pya, sys

src = sys.argv[1] if len(sys.argv) > 1 else ""
out = sys.argv[2] if len(sys.argv) > 2 else "die.png"
if not src:
    sys.exit("usage: klayout -b -r render_die.py <def|gds> <out.png>")

lv = pya.LayoutView()
lv.load_layout(src, True)
lv.max_hier()
lv.zoom_fit()
lv.save_image(out, 3200, 2400)
print(f"rendered: {src} -> {out}")
