#!/usr/bin/env python3
"""Rewrite conb tie cells in schematic CDL as direct net merges (matches
layout extraction where the tie metal shorts LO->VGND, HI->VPWR)."""
import re, sys

path = sys.argv[1]
src = open(path).read()
lines = src.split('\n')

# SUBCKT conb pin order: VGND VNB VPB VPWR HI LO
pat = re.compile(r'^X(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+sky130_fd_sc_hd__conb_[12]\s*$')
renames = []   # (old, new)
out = []
removed = 0
for ln in lines:
    m = pat.match(ln.strip())
    if m:
        vgnd, vnb, vpb, vpwr, hi, lo = m.group(2), m.group(3), m.group(4), m.group(5), m.group(6), m.group(7)
        renames.append((hi, vpwr))
        renames.append((lo, vgnd))
        removed += 1
        continue
    out.append(ln)

txt = '\n'.join(out)
# apply renames on whole netlist (word-boundary, as net names)
for old, new in renames:
    txt = re.sub(r'(?<![A-Za-z0-9_\[\]])' + re.escape(old) + r'(?![A-Za-z0-9_\[\]])', new, txt)
# drop now-unused conb subckts
txt = re.sub(r'\.SUBCKT sky130_fd_sc_hd__conb_[12].*?\.ENDS[^\n]*\n', '', txt, flags=re.S)
open(path, 'w').write(txt)
print(f"rewrote {removed} conb ties in {path}")
