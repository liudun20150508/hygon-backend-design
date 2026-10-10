#!/bin/bash
# ORFS sky130hd full flow for picorv32 (SYN -> APR -> GDS -> DRC/LVS -> STA)
export PATH="$HOME/bin:/opt/homebrew/bin:$PATH"
export PYTHON_EXE=/opt/homebrew/opt/python@3.13/bin/python3.13
export YOSYS_DATDIR=$HOME/projects/backend_demo/tools/yosys/share
export HTTPS_PROXY=http://127.0.0.1:7890 HTTP_PROXY=http://127.0.0.1:7890 ALL_PROXY=socks5://127.0.0.1:7890
FLOW=~/projects/backend_demo/tools/OpenROAD-flow-scripts/flow
cd "$FLOW"
gmake DESIGN_CONFIG=./designs/sky130hd/picorv32/config.mk \
      OPENROAD_EXE=$HOME/bin/openroad \
      YOSYS_EXE=$HOME/bin/yosys \
      KLAYOUT_CMD=$HOME/bin/klayout \
      -j8 2>&1 | tee /tmp/orfs_run.log
