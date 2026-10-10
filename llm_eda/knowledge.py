# -*- coding: utf-8 -*-
"""LLM 推理/微调负载特征 -> 数字后端优化知识库

项目定位: 海光信息数字后端 RTL2GDS (SYN/APR/TIMING/PV/IREM/LEC/VCLP)
本模块把大模型推理负载特征翻译成可执行的物理设计策略,
供 Agent 诊断报告后生成修复动作时检索。
"""

# ---------------------------------------------------------------------------
# 1. 负载特征 -> 物理设计优化策略
# ---------------------------------------------------------------------------
WORKLOAD_KNOWLEDGE = [
    {
        "workload": "KV cache (键值缓存)",
        "traffic": "每 token 写 2*N_layer*N_kv_head*d_head*dtype 字节; 读带宽 = 写带宽 * (seq_len/1); 长上下文下成为 HBM 带宽瓶颈",
        "actions": [
            "SRAM 宏(KV cache 常驻区)布局贴近 LSU/AGU,缩短地址路径,降低动态功耗",
            "KV cache 写端口 1 读端口 1 -> 宏分组双 bank,错开读写地址,避免同 bank 端口冲突",
            "KV 页表放 LMEM(软件管理 scratchpad),页表查表走低延迟路径,宏间距留足时钟树余量",
            "tag/data 阵列宏按字线方向对齐,减少绕线拥塞(APR: 宏方向统一,预留 routing channel)",
            "时钟 gating 分组: 未命中 KV 行的 bank 整块关时钟,降低 IREM 平均电流",
        ],
        "signoff": "DRC/LVS + IR/EM: KV 宏电源网络加宽,写突发时 di/dt 大,检查动态压降 < 5% VDD",
    },
    {
        "workload": "MoE (专家并行)",
        "traffic": "token 路由到 top-k 专家: all-to-all 通信,专家激活稀疏,通信/计算比高",
        "actions": [
            "专家层分片: 每个 expert 的 GEMM 阵列单独做 region 化 floorplan,簇内拥塞隔离",
            "all-to-all 交换网络(NoC)与各 expert 宏等距布局,路由链均衡 -> 时钟树 skew 收敛",
            "稀疏激活: expert 阵列间电源域隔离,未激活 expert 下电(UPF 电源意图, VCLP 校验)",
            "gateway 队列(每专家输入队列)SRAM 紧邻路由节点,降低 hop 延迟",
        ],
        "signoff": "VCLP: 电源开关单元插入合法性; PT-SI: all-to-all 总线串扰防护间距",
    },
    {
        "workload": "张量并行 (TP) / 流水并行 (PP)",
        "traffic": "TP: 每层 2 次 all-reduce(GEMM 后); PP: 层间只传激活,通信少但气泡多; 跨 die 同步",
        "actions": [
            "HBM PHY 布局在 die 边缘,与内存控制器 co-placement,PHY 供电/地回路最短",
            "die-to-die 接口时序: 跨 die 时钟采用 forwarded clock,后端固定 skew 预算,PR 阶段 pre-CDS 收敛",
            "all-reduce 环(torus/ring)拓扑: 相邻 die 接口宏布局对齐,减少跨 die 布线长度差",
            "分层时钟树: PHY 时钟域与核心时钟域隔离,避免跨域时钟树合并",
        ],
        "signoff": "Timing signoff 多 corner; PHY 接口 SDC 用 source-synchronous 约束 + data skew check",
    },
    {
        "workload": "QKV 计算 (attention 数据通路)",
        "traffic": "GEMM 为主: Q*K^T (seq_len 内积), attn*V; 计算密度高,数据复用率高",
        "actions": [
            "MAC 阵列数据通路直通布局: 权重/激活寄存器堆紧邻乘法器阵列,减少 wirelength",
            "重定时(retiming): 在 FMA 阵列中平衡流水级延迟, 配合 abc+OAI 映射",
            "时钟树平衡: MAC 阵列扇出大, 用 H-tree + 局部 mesh, skew < 30ps",
            "操作数转发总线加 shield, 避免 PT-SI 串扰失效",
        ],
        "signoff": "Timing: 关键路径通常在 attn score 计算,用 useful skew 优化; IREM: 矢量化乘法阵列电流密度均匀性检查",
    },
    {
        "workload": "HBM (高带宽存储)",
        "traffic": "HBM 堆叠 DRAM 在片外(interposer 2.5D),芯片内部是 HBM PHY + 控制器",
        "actions": [
            "HBM PHY 宏固定于 die 边缘,靠近 bumps,PHY 宏 pin 朝向统一",
            "内存控制器与 PHY 对齐布局,DFI 接口布线短直,层分配固定(高金属层)",
            "PHY 区域电源网络独立加固(power strap 加倍),IR drop 预算单独 signoff",
            "interposer 布线属于 2.5D 封装设计,芯片侧只需保证 bump map 与 PHY pin 对齐(交给封装团队,后端输出 bump 坐标约束)",
        ],
        "signoff": "IR/EM: PHY 供电网络单独验证; LVS: PHY 宏 GDS 与 bump 对应关系检查",
    },
]

# ---------------------------------------------------------------------------
# 2. 报告症状 -> 修复动作 (规则引擎, LLM 不可用时的 fallback)
# ---------------------------------------------------------------------------
RULES = [
    {
        "stage": "SYN",
        "symptom": ("timing", "slack<0", "WNS"),
        "action": "CLOCK_FREQ 从 800MHz 降到 600MHz(45nm 下 FPU/ALU 深流水 800MHz 过于激进);"
                  "或对 FPU 使用 FPU_TYPE=FPNEW(更强的 FMA 数据通路);"
                  "abc 用 -D period 收紧重跑; 打开 retiming",
        "tool": "yosys abc -D / Design Compiler compile_ultra -retime",
    },
    {
        "stage": "SYN",
        "symptom": ("area", "cell_count"),
        "action": "检查 RAM blackbox 面积是否计入(SRAM 面积由 sram_cost.py 单独估算);"
                  "乘法器改用 CSA+Wallace 结构; 共享子表达式(wreduce/share)",
        "tool": "yosys share / compile_ultra -area",
    },
    {
        "stage": "APR",
        "symptom": ("congestion", "overflow"),
        "action": "拥塞区域提高 cell padding; 宏间预留 routing channel; 层分配: 全局总线用 M5/M6 以上",
        "tool": "OpenROAD set_global_routing_layer_adjustment / ICC2 congestion repair",
    },
    {
        "stage": "TIMING",
        "symptom": ("worst slack", "wns", "-"),
        "action": "定位关键路径起点/终点(报告 Startpoint/Endpoint); 若路径在 FPU/FMA 数据通路 ->"
                  "retiming 平衡流水级 + 路径上插 buffer 分组; 若周期压不动 -> 降频重跑收敛;"
                  "45nm typical 下该设计 fmax 约 650~700MHz",
        "tool": "PrimeTime / OpenSTA",
    },
    {
        "stage": "PV",
        "symptom": ("DRC", "violation"),
        "action": "按规则类别分组: 金属间距 -> 局部重绕线; 天线违规 -> 插二极管/跳层;"
                  "宏边界 halo 冲突 -> 调整宏间距",
        "tool": "Calibre DRC / ICV",
    },
    {
        "stage": "IREM",
        "symptom": ("IR", "drop>5%"),
        "action": "热点区域 power strap 加宽加密; 高翻转率宏(KV cache 写端口)周围加 decap;"
                  "电源网络层级: M1/M2 follow-pin, 高层 mesh",
        "tool": "RedHawk / Voltus",
    },
    {
        "stage": "LEC",
        "symptom": ("nonequivalent", "mismatch"),
        "action": "检查综合里 dfflibmap 重映射的触发器类型是否改变复位行为;"
                  "检查 sv2v 转换是否丢失初始值 -> 回读 RTL 对比",
        "tool": "Formality / Conformal",
    },
    {
        "stage": "VCLP",
        "symptom": ("isolation", "level-shifter"),
        "action": "电源域接口检查: ISO 单元缺失 -> 补插入; LS 单元电压域配对错误 -> 修 UPF",
        "tool": "VC LP (Synopsys)",
    },
]
