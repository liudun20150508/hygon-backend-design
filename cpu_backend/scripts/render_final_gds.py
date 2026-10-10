import pya, sys, os
gds = sys.argv[1] if len(sys.argv) > 1 else None
out = sys.argv[2] if len(sys.argv) > 2 else ""
if not gds:
    gds = os.path.expanduser("~/projects/backend_demo/tools/OpenROAD-flow-scripts/flow/results/sky130hd/picorv32/base/6_final.gds")
if not out:
    out = "chip_layout.png"
lv = pya.LayoutView()
lv.load_layout(gds, True)
lv.max_hier()
lv.zoom_fit()
lv.save_image(out, 2000, 1500)
print("rendered", gds)
