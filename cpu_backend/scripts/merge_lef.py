#!/usr/bin/env python3
"""Merge per-cell LEF files into a single LEF with tech LEF header."""
import glob, os, sys

CELLS = "skywater-pdk/libraries/sky130_fd_sc_hd/latest/cells"
TLEF  = "skywater-pdk/libraries/sky130_fd_sc_hd/latest/tech/sky130_fd_sc_hd.tlef"
OUT   = "skywater-pdk/libraries/sky130_fd_sc_hd/sky130_fd_sc_hd.lef"

header = """VERSION 5.8 ;
BUSBITCHARS "[]" ;
DIVIDERCHAR "/" ;
END LIBRARY
"""
# extract tech lef contents (skip header/footer of tlef)
def extract_macros(path):
    with open(path) as f:
        return f.read()

macros = []
for lef in sorted(glob.glob(f"{CELLS}/*/*.lef")):
    if "magic.lef" in lef:
        continue
    with open(lef) as f:
        content = f.read()
    # take from "MACRO" to "END" block only
    start = content.find("MACRO ")
    if start < 0: continue
    end = content.find("END ", start)
    if end < 0: continue
    end = content.find("\n", end)
    macros.append(content[start:end])

with open(OUT, "w") as f:
    f.write(header)
    f.write("\n".join(macros))
print(f"merged {len(macros)} macros -> {OUT}")
