bb# TCU 版 (vortex_llm) PR 各阶段时序报告

设计: Vortex (GPU, TCU 开) | 工艺: SKY130 | 目标: 50MHz (20ns) | tt/25C/1.8V

## 2_floorplan_final

| 指标 | 值 |
|------|----|
| Worst Slack | -33.69 ns |
| TNS | -397156.47 ns |
| fmax | 53.69ns → 18.6MHz |
| Setup Skew | - ns |
| 关键路径起点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.alu_unit.g_blocks[0].mul...` |
| 关键路径终点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.alu_unit.g_blocks[0].mul...` |

## 3_global_place

| 指标 | 值 |
|------|----|
| Worst Slack | 2.32 ns |
| TNS | 0.00 ns |
| fmax | 17.68ns → 56.6MHz |
| Setup Skew | - ns |
| 关键路径起点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.mem_unit.local_mem.req_xbar/g_mu...` |
| 关键路径终点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.mem_unit.local_mem.g_data_store[...` |

## 3_resizer

| 指标 | 值 |
|------|----|
| Worst Slack | 2.32 ns |
| TNS | 0.00 ns |
| fmax | 17.68ns → 56.6MHz |
| Setup Skew | - ns |
| 关键路径起点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.mem_unit.local_mem.req_xbar/g_mu...` |
| 关键路径终点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.mem_unit.local_mem.g_data_store[...` |

## 3_detailed_place

| 指标 | 值 |
|------|----|
| Worst Slack | 2.62 ns |
| TNS | 0.00 ns |
| fmax | 17.38ns → 57.5MHz |
| Setup Skew | - ns |
| 关键路径起点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.mem_unit.local_mem.req_xbar/g_mu...` |
| 关键路径终点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.mem_unit.local_mem.g_data_store[...` |

## 4_cts_final

| 指标 | 值 |
|------|----|
| Worst Slack | 2.50 ns |
| TNS | 0.00 ns |
| fmax | 17.50ns → 57.1MHz |
| Setup Skew | 0.53 ns |
| 关键路径起点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu...` |
| 关键路径终点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu...` |

## 5_global_route

| 指标 | 值 |
|------|----|
| Worst Slack | 1.09 ns |
| TNS | 0.00 ns |
| fmax | 18.91ns → 52.9MHz |
| Setup Skew | 0.53 ns |
| 关键路径起点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu...` |
| 关键路径终点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu...` |

## 6_finish

| 指标 | 值 |
|------|----|
| Worst Slack | 2.29 ns |
| TNS | 0.00 ns |
| fmax | 17.71ns → 56.5MHz |
| Setup Skew | 0.55 ns |
| 关键路径起点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu...` |
| 关键路径终点 | `g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu...` |
