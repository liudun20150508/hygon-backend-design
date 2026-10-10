# 海光信息 DCU + CPU 数字后端设计（RTL2GDS 全流程 + DFT）

面向数字芯片**后端 RTL2GDS 全流程**的 LLM Agent 工具链。以两条真实设计为载体,
在 **SkyWater SKY130** (130nm 真开源可流片工艺) 上跑通
**综合 → APR → 时序签核 → 物理验证 → DFT** 全流程:

- **CPU 线**: picorv32 (开源 RISC-V RV32I 内核) —— SYN → LEC → 门级仿真 → 完整 tapeout 交付包;
- **GPU/DCU 线**: [Vortex GPGPU](https://github.com/vortexgpgpu/vortex) (Apache-2.0) —— 三版本 + TCU 张量核 + 大模型(LLM)负载特征实例级约束。

> 项目定位: 面向海光信息 **DCU(深算/GPU)** 与 **CPU(C86)** 两条产品线的数字后端设计 ——
> 后端流程 + LLM Agent 诊断/编排 + DFT 可测性设计。
> 载体: **DCU 线** 以 Vortex GPGPU 对标 (TCU 张量核 + LLM 负载优化); **CPU 线** 以 picorv32 (RISC-V RV32I) 对标。

---

## 完成的工作

### 1. CPU 后端全流程 (picorv32 + SKY130)

以 **picorv32** (开源 RISC-V RV32I 处理器内核, ~3600 行 Verilog) 为载体, 跑通
SYN → LEC → 门级仿真 完整后端验证链 (详见 `cpu_backend/`):

| 阶段 | 结果 |
|------|------|
| SYN 综合 | 9,597 标准单元 / 98,310 µm² (时序占比 44.58%) |
| APR 布局布线 | OpenROAD floorplan→place→CTS→route→GDS, 6,334 实例 100% 布通 |
| TIMING 时序 | OpenSTA + SPEF 反标, 0 违例 @163.9MHz |
| PV 物理验证 | KLayout DRC 全规则 + LVS 版图/网表比对 |
| LEC 等价验证 | 综合前/后 + APR 前/后 全通过 |
| 门级仿真 | RTL sim vs gatesim 一致性通过 |

交付物: `cpu_backend/reports/` (报告 + 版图/单元图 + 日志) + `cpu_backend/reports/tapeout/`
(GDS + SPEF + CDL + 网表) —— 完整 tapeout 交付包。

### 2. GPU 后端全流程 (Vortex + SKY130 三个版本跑通)

以 Vortex GPU 为对象, 依次跑通三个递进的版本:

| 版本 | 配置 | WNS @50MHz | 说明 |
|------|------|-----------|------|
| ① 基础 | 纯 GPU, TCU 张量核关 | **+1.13 ns** | 先把可流片全流程走通 |
| ② +TCU | 开张量核 FP8/INT8/2:4 稀疏 | **+2.29 ns** | 门数 281,881 → 315,271 (+11.8%) |
| ③ +AI 负载优化 | ② 基础上加负载特征约束 | **+3.06 ns** | qkv group_path 权重 2.0 + PDN 加倍 |

各版本关键阶段实测 (工具链: Yosys / OpenROAD / OpenSTA / KLayout):

| 阶段 | 结果 |
|------|------|
| SYN 综合 | 268K 门级网表; 双库策略修复 DFF legalize |
| APR 布局布线 | floorplan → place → CTS → route → GDS (1.2GB) |
| TIMING 签核 | OpenSTA + OpenRCX (SPEF) 三版 WNS 全 MET |
| PV 物理验证 | DRC 23/23/23 (库级豁免); LVS 器件级 240 类型 / 47.4 万实例 100% 匹配 |
| IREM | VDD worst 0.275mV / VSS 0.316mV |
| AI 负载优化 | netlist_bind 实例级绑定 (qkv_datapath group_path / PDN 27.1→13.6μm) |

### 3. DFT 与 ATPG (tinyNPU 载体, 713 DFF)

> 说明: DFT 链跑在 **tinyNPU**（713 DFF 的 LLM 推理加速 NPU）上, **而非 Vortex GPU** ——
> Vortex 三方案网表约 45k DFF（约 62 倍规模）, 纯 Python 自研 ATPG 引擎全规模不可行,
> 故用 tinyNPU 小载体验证完整 DFT 方法 (扫描插入 → ATPG → 门级验证), 方法可迁移到 GPU 规模。

在 tinyNPU 载体上完成完整可测性设计链 (详见 `docs/设计验证报告.md` §5.6):

- **扫描插入** (`flow/dft/02_scan_insert.py`): mux-D scan, 均衡 4 链; 观测点插入
  (高扇出内部网 + test-only DFF 串链) + 复位去耦 (消除 capture 沿复位竞争)
- **自研 ATPG 引擎** (`flow/dft/03_atpg.py`): 纯 Python 实现, 并行故障模拟 PFS
  (bit-parallel) + PODEM 确定性生成 + 逐模式故障模拟取精确检测集
- **覆盖率收敛**: 插入观测点前 4,096 模式 **47.19%** → 插入 48 个观测点后同模式数
  **100.00%** (stuck-at, 19,814/19,814 故障)
- **门级验证** (`flow/dft/04_pattern_verify.py`): yosys 门级仿真 vs Python 图模型
  参考机双向交叉比对, 抓出 4 个缺陷后 **64/64 PASS + mask 64/64 一致**

### 4. LLM EDA Agent：现成 Agent（类似 Claude Code）+ 领域知识规则

本项目的 Agent **不重造对话/推理引擎**——后端流程就是用 **Claude Code 这类现成 agent 跑通的**,
再往上加领域知识规则; 换个开源 agent 也能跑, 核心壁垒在知识规则, 不在框架本身:

- **底座 = 现成 agent (类似 Claude Code)**: 只负责"读报告、想方案"; 本项目即用 Claude Code 跑通流程;
- **核心壁垒 = 知识规则** (这才是 EDA 后端差异化的地方):
  - 坑知识库 `eda_agent/kb/pitfalls.yaml` —— 踩过的坑沉淀为团队资产 (症状 → 根因 → 修复 → 验证);
  - 负载特征知识库 `llm_eda/knowledge.py` —— KV cache / MoE / TP / QKV / HBM 五大负载 → 物理设计策略;
  - 修复规则 `llm_eda/knowledge.py` RULES —— 报告症状 → 修复动作 (LLM 不可用时 fallback);
  - 决策记录 `eda_agent/state/decisions.jsonl` —— 每步 诊断 → 动作 → 结果 可审计。

| 版本 | 目录 | 说明 |
|------|------|------|
| 早期 demo | `eda_agent/` | 坑知识库 + 决策记录 + 演示面板 (AI 副驾雏形) |
| 规则引擎版 | `llm_eda/` | 报告解析 → 规则诊断 → 修复生成 → 闭环迭代 |

### Agent 预研思路（教训与方向）

早期曾用 Claude Agent SDK 自研对话式 agent（未随本仓库发布），发现**交互/对话逻辑难以收敛**
（多轮上下文、工具调用解析等问题）；而**直接用现成 Claude Code + DeepSeek 跑后端流程是跑通的、没问题的**。
结论：与其修补 agent 底层，不如**换用现成 agent 底座**：

- **教训**：不在 agent 底层上投入 —— 自研对话引擎的交互问题修复成本高、收益低；
- **方向**：未来拿开源 agent 框架（如 Reasonix 等）作底座，只接入本项目的领域知识规则；
- **原则**：后端设计的价值在 **流程（flow/DFT）+ 知识规则**，不在 agent 底层 —— agent 可插拔、可替换。

---

## 目录结构

```
├── cpu_backend/       # CPU(picorv32) 后端全流程: RTL + 脚本 + 报告 + tapeout 交付物
├── tiny-npu/          # DFT 载体 RTL (713 DFF, SystemVerilog, 已收录)
├── llm_eda/           # 规则引擎版 (报告解析 → 规则诊断 → 闭环迭代)
├── eda_agent/         # 早期 demo (坑知识库 + 决策闭环)
├── flow/              # 后端流程脚本
│   ├── 01_prep_sources.sh / 02_synth*.sh / 03_sta.sh
│   ├── dft/           # DFT 四阶段 (01 综合 / 02 扫描插入 / 03 ATPG / 04 验证)
│   ├── openroad/      # APR/PV/IREM/LEC/VCLP 脚本
│   └── fixes/         # 坑修复脚本 (SPEF STA-1670 等)
├── results/dft/       # DFT 中间产物 (综合网表/扫描网表/ATPG 模式/验证结果, 可续跑)
└── docs/
    ├── 设计验证报告.md  # 完整设计测试验证报告 (三方案对比 + DFT + Agent)
    └── layout_final.png / schematics/ / evidence/  # 版图 / 逻辑图 / 签核证据
```

---

## 快速开始

### llm_eda (规则引擎版)

```bash
cd llm_eda
pip install -r requirements.txt        # (如存在)
# 编辑 config.json: offline(规则模式, 零依赖) / openai(OpenAI 兼容端点) / ollama(本地)
python cli.py
```

### 后端流程与 DFT

```bash
export SKY130_LIB=<sky130_fd_sc_hd__tt_025C_1v80.lib 路径>
# tinyNPU RTL 已收录于 tiny-npu/rtl (无需设 TINYNPU_RTL); 用外部 RTL 时再 export TINYNPU_RTL
bash flow/dft/01_synth.sh                  # DFT 阶段 01: 综合
python3 flow/dft/02_scan_insert.py         # 阶段 02: 扫描插入
python3 flow/dft/03_atpg.py                # 阶段 03: ATPG (可从 results/dft/03_atpg 续跑)
python3 flow/dft/04_pattern_verify.py      # 阶段 04: 门级验证
```

### CPU 后端 (picorv32)

```bash
cd cpu_backend
export SKY130_LIB=<sky130_fd_sc_hd__tt_025C_1v80.lib 路径>
bash scripts/tapeout_pipeline.sh   # SYN → APR → STA → PV → LEC → 门级仿真 → tapeout 交付包
```

### 作为 Claude Code Skill 使用

本仓库附带 Claude Code Skill (`.claude/skills/backend-flow/SKILL.md`): 把仓库加入 Claude Code
工作区后, agent 会自动加载该 skill, 当提到 TCU/ORFS/签核/DRC/LVS/SPEF/AI负载/三方案 时自动触发,
提供三方案跑法、签核链与 6 个关键坑。也支持 llm_eda 的命令行调用 (`python -m llm_eda.cli analyze/optimize`)。

---

## 依赖与说明

- **EDA 工具链** (执行层): Yosys / OpenROAD / OpenSTA / KLayout; 流程脚本默认从
  `$PATH` / `~/bin` / 环境变量 (如 `SKY130_LIB`) 解析, 无硬编码个人路径。
- **PDK**: SkyWater SKY130 (sky130_fd_sc_hd) 与 Nangate45 (45nm 学术基线)。
- **设计输入**: CPU 载体 picorv32 的 RTL 已收录 (`cpu_backend/picorv32/`); DFT 载体 tinyNPU 的
  RTL 已收录 (`tiny-npu/rtl`, 713 DFF); GPU 三版本载体 Vortex 为第三方开源 (Apache-2.0),
  需 `git clone` 到仓库根 `vortex/` 目录 (见顶部链接)。
- **中间产物**: DFT 四阶段中间产物已收录 (`results/dft/`: 综合网表/扫描网表/ATPG 模式/验证结果),
  可跳过 01/02 直接从 03/04 续跑; CPU 后端中间产物见 `cpu_backend/reports/`; GPU 大中间产物
  (GDS 1.2GB / SPEF 789MB / 综合网表 104MB) 体积过大, 用脚本复现 (见 `.claude/skills/backend-flow/SKILL.md` 与 `flow/`)。
- **Agent 底座**: llm_eda 支持 OpenAI 兼容端点 / Ollama 本地 / 离线规则模式
  (见 `llm_eda/config.json`), 无第三方 SDK 硬依赖。
- 本仓库为**流程编排 + 诊断 + DFT 算法**层, 执行仍依赖上述开源 EDA 工具链;
  详见 `docs/设计验证报告.md` 的未覆盖项与商业级签核待办。

---

## 对接商业后端与晶圆厂 PDK 的路径

本仓库在开源工艺 (SKY130) 上跑通全流程, 但流程设计上**刻意保持工具与工艺无关**,
可平滑切换到商业后端工具链与台积电 (TSMC) / 中芯国际 (SMIC) 等商业 PDK。

### 1. 与商业后端工具链的对接: 数据格式统一, 任意阶段可交接

开源链与商业链读写的是同一套工业标准交换格式 (Verilog 网表 / SDC / LEF-DEF /
SPEF / GDSII / Liberty), 因此交接是"换工具", 不是"重写流程":

| 阶段 | 开源链产出 | 商业链接手 |
|------|-----------|-----------|
| 综合 | Yosys → 门级网表 + SDC | Design Compiler / Genus 直接 read |
| 布局布线 | OpenROAD → DEF | ICC2 / Innovus 读入继续 |
| 时序签核 | OpenSTA SDC + OpenRCX SPEF | PrimeTime / Tempus 最终 signoff |
| 物理验证 | GDSII + 网表 | Calibre / ICV 跑 DRC/LVS/antenna/DFM |
| 交付 | 填充后 GDS | 晶圆厂 mask 数据准备 |

### 2. 衔接 TSMC / SMIC PDK: 工艺相关的东西收敛到四类输入

流程脚本、约束生成 (netlist_bind)、DFT/ATPG 算法、Agent 诊断知识库都是**工艺无关**的;
真正随工艺变化的只有四类输入, 换 PDK = 换这四样 (这正是 `SKY130_LIB` 等做成环境变量的原因):

| PDK 组成 | 本项目 (SKY130) | TSMC N7/N5/N3 · SMIC 14nm/28nm |
|---------|----------------|-------------------------------|
| 时序/功耗库 | `sky130_fd_sc_hd__tt_025C_1v80.lib` | 各 corner 的 `.lib` (CCS/ECSM, 含 SI) |
| 几何库 | `.lef` | 各层 `.lef` + tech file |
| 物理验证规则 | KLayout deck | Calibre DRC/LVS rule deck |
| 层映射/RC | layers map + OpenRCX | StarRC/QRC `.nxtgrd` / `.itf` |

### 3. 从 130nm 到先进节点新增的签核项 (如实)

SKY130 单 corner 即可签核; TSMC/SMIC 主流与先进节点会新增: 多 corner/mode (MMMC)、
OCV/AOCV/POCV 时序裕量、信号完整性 (SI)、更复杂的 DRC (多重曝光/密度)、动态 IR/EM
(VCD 向量)、形式验证 (RTL vs 门级); DFT 侧需升级测试压缩 (EDT/OCC)、at-speed、
MBIST、boundary scan (本仓库的裸 4 链 + stuck-at 为入门级, 量产需全套)。

### 4. PDK 获取与合规

TSMC / SMIC 的 PDK 为商业授权物, 需签 NDA 从晶圆厂/工艺平台获取, **不随本仓库分发**;
本仓库只提供接入点 (环境变量 + 标准格式约定), 不含任何商业 PDK 内容。

> 一句话: 开源链负责"在可流片工艺上把方法跑通、把算法验证正确"; 商业链 + 商业 PDK
> 负责"正式签核 + 流片"。两者同一套标准格式, 切换 = 替换四类输入 + 补先进节点签核项。

## License

本项目代码以 Apache-2.0 发布 (与 Vortex 一致)。所引用的第三方 EDA 工具与 PDK
遵循各自许可证。
