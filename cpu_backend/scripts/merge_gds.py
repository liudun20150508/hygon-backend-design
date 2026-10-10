#!/usr/bin/env python3
"""Merge per-cell GDS files into single GDS using KLayout."""
import glob
import klayout.db as db

CELLS = "skywater-pdk/libraries/sky130_fd_sc_hd/latest/cells"
OUT   = "skywater-pdk/libraries/sky130_fd_sc_hd/sky130_fd_sc_hd.gds"

layout = db.Layout()
layout.dbu = 0.001
merged = 0
for gds in sorted(glob.glob(f"{CELLS}/*/*.gds")):
    try:
        tmp = db.Layout()
        tmp.read(gds)
        for ci in tmp.each_cell():
            tgt = layout.cell(ci.name)
            if tgt is None:
                tgt = layout.create_cell(ci.name)
            tgt.copy_tree(ci)
        merged += 1
    except Exception as e:
        print(f"skip {gds}: {e}")

layout.write(OUT)
print(f"merged {merged} gds files -> {OUT}")
