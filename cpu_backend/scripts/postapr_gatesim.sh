#!/bin/bash
# Post-APR gate-level simulation on 6_final.v, compare with RTL baseline
set -e
FLOW=~/projects/backend_demo/tools/OpenROAD-flow-scripts/flow
RES=$FLOW/results/sky130hd/picorv32/base
IV=/tmp/iverilog-13_0/driver/iverilog
VVP=/tmp/iverilog-13_0/lib/ivl/vvp
cd ~/projects/backend_demo
$IV -o /tmp/postapr.vvp $RES/6_final.v scripts/sky130_gatesim.v scripts/sky130_gatesim_auto.v /tmp/tb_gate.v 2>&1 | grep -v warning | head -3
cd /tmp && $VVP postapr.vvp > /tmp/postapr_sim.log 2>&1
echo "写次数: $(grep -c '^write' /tmp/postapr_sim.log) (RTL 基线: 45)"
cp /tmp/postapr_sim.log ~/projects/backend_demo/reports/gatesim_postapr.log
