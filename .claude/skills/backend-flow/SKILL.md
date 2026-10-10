---
name: backend-flow
description: 开源GPU SKY130 后端全流程运维技能 — ORFS 三方案(base/+TCU/+AI负载) 的跑法、坑与签核链。当用户提到 TCU、ORFS、vortex_llm、签核、DRC、LVS、SPEF、AI负载、三方案 时使用。
---

# SKY130 后端全流程运维 (Vortex GPU 三方案)

## 环境
- ORFS: ~/projects/backend_demo/tools/OpenROAD-flow-scripts/flow
- 三配置: designs/sky130hd/{vortex, vortex_llm, vortex_llm_ai}/config.mk
- 工具: ~/bin/{openroad,yosys,klayout} (M1 原生 ARM64 编译)
- 启动: `gmake DESIGN_CONFIG=./designs/sky130hd/vortex_llm/config.mk OPENROAD_EXE=$HOME/bin/openroad YOSYS_EXE=$HOME/bin/yosys KLAYOUT_CMD=$HOME/bin/klayout -j1` (32GB 内存必须 -j1)

## 阶段与产物 (results/sky130hd/<design>/base/)
1_synth.odb → 2_floorplan.odb → 3_place.odb → 4_cts.odb → 5_route.odb → 6_1_fill.odb → 6_report (6_final.gds/v/sdc/spef)

## 签核链
- STA: 修 SPEF 后 read_spef + report_wns (llm: WNS +2.29ns @50MHz MET)
- DRC: `make drc` (KLayout sky130hd.lydrc → reports/6_drc_count.rpt)
- LVS: `make lvs` (6_lvs.lvsdb; 器件级匹配证据)
- CDL: `make do-cdl`

## 关键坑 (都已在 llm_eda/knowledge.py 与 eda_agent/kb/pitfalls.yaml 固化)
1. **SPEF STA-1670**: OpenRCX 写 [\-N]; fix_spef_negidx.py docstring 必须 r""" 否则 SyntaxWarning 到 stderr 让 Tcl exec 误判失败不 rename
2. **make 假跳过**: 失败的 stage 日志文件存在 → make 认为 stage 完成; 重跑前必须删 logs/.../<stage>.log (+ .json)
3. **ORD-2013 LEF master not found**: Nangate45 网表喂 SKY130 LEF; 走 ORFS 即可避免
4. **DFF legalize**: 双库策略 (dffmap 库 + patched 库)
5. **N_MACROS=0**: ORFS 综合后 SRAM 已映射为寄存器阵列, fakeram 仅占位
6. **无 set_instance_region/set_shielded_net**: 用 group_path(SDC) + PDN 加倍替代

## AI 负载版约束 (vortex_llm_ai)
- constraint.sdc: qkv_datapath group_path weight 2.0 (VX_fma_unit/VX_fpu_std/VX_wallace_mul 输出 pin)
- pdn.tcl: met4/met5 pitch 27.1→13.6um (电源带加倍)
- 适配说明: designs/sky130hd/vortex_llm_ai/inst_bind_ai_adaptation.md
