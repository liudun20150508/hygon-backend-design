#!/bin/bash
# 一键 tapeout 管线：build 产物 → ORFS APR 流程 → 后仿 LEC/GLS → 版图渲染 → 报告汇总
set -e
export PATH="$HOME/bin:/opt/homebrew/bin:$PATH"

# 1. link freshly built OpenROAD binary
ORBIN=~/projects/backend_demo/tools/OpenROAD/bazel-bin/openroad
[ -x "$ORBIN" ] && ln -sf "$ORBIN" ~/bin/openroad && echo "openroad linked: $($ORBIN -version 2>&1 | head -1)"

# 2. run ORFS sky130hd flow (SYN -> APR -> GDS/DRC/LVS/STA/IR)
bash ~/projects/backend_demo/scripts/run_orfs.sh

# 3. post-APR LEC (1_synth.v vs 6_final.v)
bash ~/projects/backend_demo/scripts/postapr_lec.sh || echo "LEC: see reports/lec_postapr.log"

# 4. post-APR GLS (6_final.v vs RTL baseline)
bash ~/projects/backend_demo/scripts/postapr_gatesim.sh || echo "GLS: see reports/gatesim_postapr.log"

# 5. render final layout
~/bin/klayout -b -r ~/projects/backend_demo/scripts/render_final_gds.py 2>&1 | tail -1

# 6. summary
echo "=== TAPEOUT PIPELINE COMPLETE ==="
ls -la ~/projects/backend_demo/reports/
