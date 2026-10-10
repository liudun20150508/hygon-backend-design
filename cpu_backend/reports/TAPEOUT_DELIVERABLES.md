# 晶圆厂交付（Tapeout Handoff）清单

设计：picorv32 @ SKY130（sky130hd 工艺变体），50 MHz 目标
流程：Yosys(SYN) → OpenROAD(APR/STA/IR) → KLayout(DRC/LVS) → LEC/GLS(sign-off)

## 交付文件清单

| # | 交付物 | 文件 | 状态 |
|---|---|---|---|
| 1 | GDSII 版图 | results/sky130hd/picorv32/6_final.gds | ✅ 完成 |
| 2 | 布线后网表 | results/.../6_final.v | ✅ 完成 |
| 3 | 布线后 SDF | results/.../6_final.sdf | ✅ 完成 |
| 4 | 寄生参数 SPEF | results/.../6_final.spef | ✅ 完成 |
| 5 | DRC 报告 | results/.../6_drc.rpt | ✅ 完成 |
| 6 | LVS 报告 | results/.../6_lvs.rpt | ✅ 完成 |
| 7 | STA 签核报告 | results/.../6_final_sta.*.rpt | ✅ 完成 |
| 8 | IR drop 报告 | OpenROAD analyze_power_grid | ✅ 完成 |
| 9 | SDC 时序约束 | reports/picorv32.sdc | ✅ 完成 |
| 10 | 综合网表（SYN 阶段交付） | reports/picorv32_synth.v | ✅ 完成 |
| 11 | LEC 报告（综合后） | reports/lec_pass.log | ✅ 完成（10,209/10,209） |
| 12 | 门级仿真（综合后） | reports/gatesim.log | ✅ 完成（45 写 PASS） |
| 13 | LEC 报告（布线后 6_final.v vs RTL） | reports/lec_postapr_pass.log | ✅ 完成 |
| 14 | 门级仿真（布线后） | reports/gatesim_postapr.log | ✅ 完成 |

## 签核（sign-off）判定标准

| 检查项 | 通过标准 |
|---|---|
| DRC | 0 违例（sky130hd.lydrc 全规则集） |
| LVS | 版图 vs 网表 100% 匹配（含电源网） |
| STA | 所有时钟域 WNS/TNS ≥ 0（tt 角，50 MHz） |
| IR | 最差 VDD drop < 5%（静态网格分析） |
| LEC | 布线后网表 vs RTL 参考 100% 等价 |
| GLS | 布线后网表功能仿真与 RTL 基线一致 |

*注：商业流程多工艺角（ss/ff/低温/高温）与 EM 分析在同等工具链上以同法扩展；
本报告演示完整方法论闭环。*
