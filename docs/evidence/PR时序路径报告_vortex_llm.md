# TCU 版 (vortex_llm) PR 各阶段时序路径报告

设计: Vortex (GPU, TCU 开) | 工艺: SKY130 | 目标: 50MHz (20ns) | tt/25C/1.8V

## Floorplan (2_floorplan_final)

| 指标 | 值 |
|------|----|
| Worst Slack (setup) | -33.69 ns |
| TNS | -397156.47 ns |
| fmax | 53.69ns → 18.6MHz |
| Setup Skew | - |

### 关键路径明细 (setup)
```
Startpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fma.pe_ser/out_buf/genblk1.genblk1.g_eb2.stream_buffer/g_buffer.valid_in_r$_SDFFE_PP1P_
            (rising edge-triggered flip-flop clocked by clk)
Endpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.issue.g_slices[0].issue_slice.dispatcher.g_buffers[3].buffer/genblk1.genblk1.g_ebN.fifo_queue/g_depth_n.g_out_reg.data_out_r[0]$_DFFE_PP_
          (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max

Fanout     Cap    Slew   Delay    Time   Description
```

## Global Place (3_global_place)

| 指标 | 值 |
|------|----|
| Worst Slack (setup) | 2.32 ns |
| TNS | 0.00 ns |
| fmax | 17.68ns → 56.6MHz |
| Setup Skew | - |

### 关键路径明细 (setup)
```
Startpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[20].srt_reg/g_pipe.pipe[259]$_DFFE_PP_
            (rising edge-triggered flip-flop clocked by clk)
Endpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[21].srt_reg/g_pipe.pipe[138]$_DFFE_PP_
          (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max

Fanout     Cap    Slew   Delay    Time   Description
```

## Resizer (3_resizer)

| 指标 | 值 |
|------|----|
| Worst Slack (setup) | 2.32 ns |
| TNS | 0.00 ns |
| fmax | 17.68ns → 56.6MHz |
| Setup Skew | - |

### 关键路径明细 (setup)
```
Startpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[20].srt_reg/g_pipe.pipe[259]$_DFFE_PP_
            (rising edge-triggered flip-flop clocked by clk)
Endpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[21].srt_reg/g_pipe.pipe[138]$_DFFE_PP_
          (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max

Fanout     Cap    Slew   Delay    Time   Description
```

## Detailed Place (3_detailed_place)

| 指标 | 值 |
|------|----|
| Worst Slack (setup) | 2.62 ns |
| TNS | 0.00 ns |
| fmax | 17.38ns → 57.5MHz |
| Setup Skew | - |

### 关键路径明细 (setup)
```
Startpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[20].srt_reg/g_pipe.pipe[259]$_DFFE_PP_
            (rising edge-triggered flip-flop clocked by clk)
Endpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[21].srt_reg/g_pipe.pipe[138]$_DFFE_PP_
          (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max

Fanout     Cap    Slew   Delay    Time   Description
```

## CTS (4_cts_final)

| 指标 | 值 |
|------|----|
| Worst Slack (setup) | 2.50 ns |
| TNS | 0.00 ns |
| fmax | 17.50ns → 57.1MHz |
| Setup Skew | 0.53 ns |

### 关键路径明细 (setup)
```
Startpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[20].srt_reg/g_pipe.pipe[259]$_DFFE_PP_
            (rising edge-triggered flip-flop clocked by clk)
Endpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[21].srt_reg/g_pipe.pipe[138]$_DFFE_PP_
          (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max

Fanout     Cap    Slew   Delay    Time   Description
```

## Global Route (5_global_route)

| 指标 | 值 |
|------|----|
| Worst Slack (setup) | 1.09 ns |
| TNS | 0.00 ns |
| fmax | 18.91ns → 52.9MHz |
| Setup Skew | 0.53 ns |

### 关键路径明细 (setup)
```
Startpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[20].srt_reg/g_pipe.pipe[259]$_DFFE_PP_
            (rising edge-triggered flip-flop clocked by clk)
Endpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[21].srt_reg/g_pipe.pipe[138]$_DFFE_PP_
          (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max

Fanout     Cap    Slew   Delay    Time   Description
```

## Signoff(RCX) (6_finish)

| 指标 | 值 |
|------|----|
| Worst Slack (setup) | 2.29 ns |
| TNS | 0.00 ns |
| fmax | 17.71ns → 56.5MHz |
| Setup Skew | 0.55 ns |

### 关键路径明细 (setup)
```
Startpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[20].srt_reg/g_pipe.pipe[259]$_DFFE_PP_
            (rising edge-triggered flip-flop clocked by clk)
Endpoint: g_clusters[0].cluster.g_sockets[0].socket.g_cores[0].core.execute.fpu_unit.g_blocks[0].fpu_std/g_fdivsqrt.g_units[0].fdiv_sqrt_unit/g_srt[21].srt_reg/g_pipe.pipe[138]$_DFFE_PP_
          (rising edge-triggered flip-flop clocked by clk)
Path Group: clk
Path Type: max

Fanout     Cap    Slew   Delay    Time   Description
```
