#!/bin/bash
# Post-APR LEC: synthesized netlist (1_synth.v) vs post-route netlist (6_final.v)
# Physical-only cells (tap/fill/decap/diode) are logically inert -> stripped.
set -e
FLOW=~/projects/backend_demo/tools/OpenROAD-flow-scripts/flow
RES=$FLOW/results/sky130hd/picorv32/base
strip_phys() {
  # remove instances of physical-only cells
  sed -E '/sky130_fd_sc_hd__(tapvpwrvgnd_1|fill_[0-9]+|decap_[0-9]+|diode_[0-9]+)/d' "$1"
}
strip_phys $RES/1_2_yosys.v | sed 's/^module picorv32/module gold/' > /tmp/gold.v
strip_phys $RES/6_final.v | sed 's/^module picorv32/module gate/' > /tmp/gate.v
grep -c "^module" /tmp/gold.v /tmp/gate.v
cd ~/projects/backend_demo
./tools/yosys/build/yosys -s scripts/lec.ys 2>&1 | tee reports/lec_postapr.log | tail -6
