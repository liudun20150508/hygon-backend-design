# -*- coding: utf-8 -*-
"""负载特征 -> 网表具体模块实例的绑定

输入: sv2v 输出网表 project.v (或映射后网表)
输出: 针对具体实例的布局布线约束 Tcl 片段
     (region 划分 / 宏摆放 / 布线优先级 / 时钟分组)

让 LLM Agent 的后端优化落在"具体模块实例"上,
而不是泛泛而谈 —— 这是对"针对具体神经网络处理器优化"的直接回答。
"""
import re, os

# Vortex GPGPU (RISC-V) 模块 -> 大模型推理负载特征绑定表
BINDING = {
    # KV cache: 键值缓存常驻 + LMEM scratchpad 页表
    "kv_cache": {
        "modules": ["VX_cache_data", "VX_cache_tags", "VX_cache_mshr",
                    "VX_local_mem", "VX_cache_wrap", "VX_cache_cluster"],
        "region":   "left_bottom",   # 贴近 LSU/AGU
        "priority": "mem",
        "strategy": "宏双 bank 错开读写端口; 电源带加倍; 时钟 gating 分组",
    },
    # QKV 计算: GEMM/FMA 数据通路
    "qkv_gemm": {
        "modules": ["VX_fpu_unit", "VX_fma_unit", "VX_alu_unit",
                    "VX_alu_muldiv", "VX_multiplier", "VX_wallace_mul",
                    "VX_fpu_std", "VX_lsu_unit"],
        "region":   "center",
        "priority": "datapath",
        "strategy": "数据通路直通布局; retiming 平衡流水级; skew<30ps",
    },
    # MoE all-to-all: 交换网络/仲裁器
    "moe_noc": {
        "modules": ["VX_mem_xbar", "VX_stream_xbar", "VX_stream_switch",
                    "VX_priority_arbiter", "VX_rr_arbiter", "VX_matrix_arbiter",
                    "VX_socket", "VX_cluster"],
        "region":   "center_ring",
        "priority": "noc",
        "strategy": "等距布局, 路由链均衡; 总线加 shield; 专家区域可下电",
    },
    # 张量并行 / HBM: 片外接口
    "tp_hbm": {
        "modules": ["Vortex_axi", "VX_mem_axi", "VX_membus_to_axi",
                    "VX_mem_from_axi", "VX_mm_axi", "VX_kmu"],
        "region":   "io_ring",
        "priority": "io",
        "strategy": "接口宏固定 die 边缘; 控制器与 PHY co-placement; 独立电源域",
    },
}

def parse_modules(netlist):
    """解析网表中的模块名集合"""
    mods = set()
    if not os.path.exists(netlist):
        return mods
    text = open(netlist, encoding="utf-8", errors="ignore").read()
    for m in re.finditer(r"^\s*module\s+(\w+)", text, re.M):
        mods.add(m.group(1))
    return mods

def bind(netlist):
    """返回: 网表中实际存在的模块与负载特征的绑定"""
    mods = parse_modules(netlist)
    result = []
    for feat, spec in BINDING.items():
        hit = sorted(mods & set(spec["modules"]))
        if hit:
            result.append({"feature": feat, "matched": hit,
                           "region": spec["region"],
                           "strategy": spec["strategy"]})
    return result

def gen_tcl(binding, top="Vortex", util=0.60):
    """根据绑定结果生成针对具体实例的 APR 约束 Tcl"""
    lines = ["# 由 llm_eda.netlist_bind 生成: 负载特征 -> 具体实例约束",
             f"# top: {top}"]
    for b in binding:
        feat, mods = b["feature"], b["matched"]
        insts = []
        for m in mods:
            # sv2v 网表扁平化后模块名保留, 实例匹配用通配
            insts.append(f"get_cells -hier -filter 'ref_name =~ *{m}*'")
        lines.append("")
        lines.append(f"# ---- {feat}: {', '.join(mods)} ----")
        lines.append(f"# 策略: {b['strategy']}")
        for i in insts:
            lines.append(f"set group [{i}]")
            lines.append("if {[llength $group] > 0} {")
            lines.append(f"    set_instance_region $group {feat}_region -util {util}")
            lines.append("}")
        if feat == "qkv_gemm":
            lines.append("group_path -name qkv_datapath -weight 2.0")
        if feat == "moe_noc":
            lines.append("set_shielded_net [get_nets -hier -filter \"name =~ *xbar*\"]")
        if feat == "kv_cache":
            lines.append("# KV 宏区域电源带加倍: add_pdn_stripe -grid stdcell_grid -layer metal5 -width 3.2 -pitch 8 -region kv_cache_region")
        if feat == "tp_hbm":
            lines.append("# HBM PHY/控制器: 宏 halo 20um, 独立电源网络签核")
    return "\n".join(lines)

if __name__ == "__main__":
    import sys
    nl = sys.argv[1] if len(sys.argv) > 1 else "build/vortex_1c/project.v"
    b = bind(nl)
    print(f"网表模块匹配结果 ({len(b)}/{len(BINDING)} 类负载特征):")
    for x in b:
        print(f"  [{x['feature']}] 命中 {len(x['matched'])} 个模块: {', '.join(x['matched'][:8])}")
    out = sys.argv[2] if len(sys.argv) > 2 else "flow/openroad/inst_bind.tcl"
    with open(out, "w") as f:
        f.write(gen_tcl(b))
    print(f"\n实例级约束已生成: {out}")
