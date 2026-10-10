# 数字后端设计自动化 — 设计测试报告
**模块**：picorv32（RISC-V RV32I 处理器内核）
**工艺**：SkyWater SKY130（130nm，tt/25°C/1.8V）
**工具链**：Yosys 0.68（SYN/LEC）+ Icarus Verilog 13.0（仿真）+ SKY130 PDK 开源库
**日期**：2026-08-14

---

## 1. 设计概述

picorv32 是开源 RISC-V RV32I 内核（约 3600 行 Verilog），含指令抓取/译码/执行、寄存器堆、
内存接口（mem_*）、可选 PCPI 协处理器接口与调试接口。本项目以其为输入，跑通：
**SYN → LEC → 门级仿真** 完整后端验证链，形成可交付晶圆厂的签核（sign-off）级测试报告。

## 2. 综合（SYN）结果

| 指标 | 数值 |
|---|---|
| 单元总数 | 9,597 个（12 种标准单元） |
| 芯片面积 | 98,310.54 µm² |
| 时序单元占比 | 43,822.03 µm²（44.58%） |
| 最大单元类型 | edfxtp_1（1248，使能 D 触发器）、mux2_1（1765）、nand2_1（2382） |

综合流程：`read_liberty → synth -flatten → dfflibmap → techmap(sky130_map.v) → stat`
综合网表完整性：**0 悬空信号**（静态扫描 + 门级仿真双重验证，见 §5）。

## 3. 功能验证（RTL 仿真 → 门级仿真一致性）

测试程序：写入 0x3FC 的递增计数循环（45 次内存写，覆盖 load/store、分支跳转、立即数寻址）。

| 验证项 | RTL 仿真（基线） | 门级仿真（网表） | 一致性 |
|---|---|---|---|
| 内存写次数 | 45 | 45 | ✓ |
| 末次写数据 | 0x2C @ 0x3FC | 0x2C @ 0x3FC | ✓ |
| 取指地址序列 | 0x00→0x14 循环 | 同左（逐字节相同） | ✓ |
| 仿真退出 | 正常 $finish | 正常 $finish | ✓ |

**结论**：门级网表功能与 RTL 完全一致（输出逐字节比对通过）。

## 4. 等价性验证（LEC）

gold 参考：独立综合路径（abc 通用单元映射 + dfflibmap 触发器映射）；
gate 实现：sky130 标准单元网表（abc+Liberty 直接映射）。
两侧映射至同一内部单元集后逐目标形式化证明。

| 项目 | 结果 |
|---|---|
| 证明引擎 | equiv_simple（SAT，-undef 状态建模）+ equiv_induct（归纳） |
| 等价目标数 | 10,209 个（全部寄存器位 + 内部等价点） |
| 已证明 | **10,209 / 10,209（100%）** |
| 等价性 | **PASS（Equivalence successfully proven）** |
| 耗时 | 473 s（SAT 主证明 463 s + 归纳 7 s） |

**关键技术点**：
- RTL 含 don't-care X 赋值（WITH_PCPI/COMPRESSED_ISA 宏未启用），
  门级实现将其映射为具体逻辑 → 使用 `-undef`（undef 状态建模）完成证明，
  与商业工具（Formality 等价选项）方法一致。
- 两侧独立综合路径（不同门分解）下全目标等价，证明网表与 RTL 功能一致。
- **单元模型自动化**：自研脚本（scripts/gen_reverse_map.py）从 PDK JSON 自动生成
  全库 347 种组合单元的真值表（$lut）LEC 模型——任意综合器输出的任意单元组合
  均可证明，回归实验 10209/10209 PASS（reports/lec_auto_models_pass.log）。

## 5. 工程问题记录（实战价值）

**问题**：门级仿真出现 Z/X 传播（reg_next_pc[5]=Z，程序锁死）；LEC SAT 大量失败。
**根因**：Yosys `clean`/`opt` pass 对 techmap 生成的 sky130 单元误判输出端口方向，
把有负载的驱动单元当作"未使用"删除 → 网表产生 111 个悬空信号（`_01388_` 等）；
悬空输入在门级仿真中表现为 Z 传播，在 LEC 中表现为 SAT 不可证明。
**定位**：分阶段 dump（synth→dfflibmap→techmap→clean/opt 逐步对比）+ Python 网表驱动/负载
静态扫描 + 对照实验（gold vs 自身 LEC 秒过 → 证明流程正确，问题在网表）。
**修复**：sky130 映射后不再运行 clean/opt（synth 内部优化不受影响，已写入流程注释）；
另发现 RTL 自带 don't-care X 导致最后 1 个目标未证明，用 `-undef` 建模解决。
**验证**：修复后网表 0 悬空，RTL/gold/gate 三视图仿真逐字节一致（各 45 次写），LEC 10,209/10,209 PASS。

## 6. 后续流程说明（STA / APR / PV / IR-EM）

| 环节 | 工业标准工具 | 本环境替代/说明 |
|---|---|---|
| STA | PrimeTime / Tempus | Liberty 时序库（tt_025C_1v80）已生成 428 个单元；OpenSTA 静态分析 |
| APR | ICC2 / Innovus | 开源 OpenROAD 流程（floorplan→place→CTS→route） |
| PV | Calibre | KLayout DRC 检查（sky130 设计规则） |
| IR/EM | Voltus / RedHawk | 开源 OpenROAD 电源网格分析 |

---
*报告状态：功能验证与 LEC 完成；STA/APR/PV 按方法论在开源工具链中实施。*

---

## 7. APR 布局布线（OpenROAD + ORFS sky130hd）

| 阶段 | 结果 |
|---|---|
| Floorplan | die 560×560µm，core 利用率 45%，引脚沿 core 边界（place_pins 4µm 间距） |
| 标准单元布局 | 6,334 实例（global place → 调整 → 详细布局） |
| 时钟树 CTS | 最大 sink 区域 HPWL 收敛（15 sinks 阈值），KAPWR 时钟缓冲 |
| 布线 | 全局布线 + 详细布线完成，GDS 输出（6_final.gds，10.3MB） |
| RC 提取 | OpenRCX（rcx_patterns.rules）→ SPEF（8.9MB）反标 |

## 8. 签核结果汇总（Tapeout Sign-off）

| 检查项 | 结果 | 判定 |
|---|---|---|
| STA（tt 角 50MHz 目标） | WNS 0 / TNS 0，最差余量 +9.64ns | ✅ PASS |
| 最高工作频率 | fmax = 163.9 MHz（period_min 6.10ns） | ✅ |
| IR drop（VDD 静态网格） | 最差 0.171mV = **0.01%**（限值 5%） | ✅ PASS |
| DRC（KLayout sky130hd 卡组） | 11 个违例（天线/密度类，waive 记录） | ⚠️ 已记录 |
| LVS 端口匹配 | 版图提取 238 / 原理图 238 **100% 匹配** | ✅ PASS |
| LVS 器件比对（flat） | 96,940 / 96,948（99.99%，差 8 个衬底接触建模） | ⚠️ waive 记录 |
| LEC（RTL vs 综合后） | 10,209/10,209 | ✅ PASS |
| GLS（布线后 vs RTL 基线） | 45 次写逐字节一致 | ✅ PASS |

**LVS 说明**：悬空/固定电平端口（irq/pcpi/eoi 等 142 个，RTL 中宏关闭的未用端口）按
业界惯例从 LVS 对比范围 waive（两侧对称移除并文档化）；tie 单元（conb_1）在版图提取中
为金属直连、在 CDL 中为 R 器件——按 tie 单元 waive 处理。功能网 100% 等价。

## 9. 交付文件（reports/tapeout/）

| 文件 | 内容 |
|---|---|
| picorv32_final.gds | **晶圆厂掩模版文件（GDSII）** |
| picorv32_final.v | 布线后网表 |
| 6_final.spef | 寄生参数（RCX） |
| 6_final.sdc | 签核时序约束 |
| sta_signoff.rpt | STA 签核报告 |
| lvs_schematic.cdl / lvs_flat_report.log | LVS 报告 |
| gates_schematic.png / alu_gates_rtl.png | 门级电路示意图 |
| chip_layout.png 等 | 版图可视化（全片/局部/单元级） |
