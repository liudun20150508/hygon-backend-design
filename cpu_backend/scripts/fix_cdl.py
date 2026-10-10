#!/usr/bin/env python3
"""Fix OpenROAD write_cdl output: some X-lines miss the trailing cell name.
Maps instances to cell types from 6_final.v and appends the missing name."""
import re, sys

cdl_path = sys.argv[1]
v_path = sys.argv[2]

# instance -> cell type from verilog
inst2cell = {}
vsrc = open(v_path).read()
for m in re.finditer(r'(\w+)\s+(_\d+_|\w+_leaf_\d+_\w+)\s*\(', vsrc):
    inst2cell[m.group(2)] = m.group(1)
# instance lines like: sky130_fd_sc_hd__nor2_4 _4689_ (.A(net678),
for m in re.finditer(r'(sky130_fd_sc_hd__\w+)\s+([\w.\\]+)\s*\(', vsrc):
    inst = m.group(2).strip('\\')
    inst2cell[inst] = m.group(1)

out = []
fixed = 0
for ln in open(cdl_path):
    m = re.match(r'^(X\S+)\s+(.*)$', ln.strip())
    if m and not re.search(r'sky130_fd_sc_hd__\w+\s*$', m.group(2)):
        inst = m.group(1)
        cell = inst2cell.get(inst)
        if not cell and inst.startswith("X"):
            cell = inst2cell.get(inst[1:])
        if cell:
            out.append(f"{m.group(1)} {m.group(2)} {cell}\n")
            fixed += 1
            continue
    out.append(ln if ln.endswith('\n') else ln + '\n')

open(cdl_path, 'w').writelines(out)
print(f"fixed {fixed} lines in {cdl_path}")
