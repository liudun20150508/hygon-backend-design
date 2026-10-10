# SDC timing constraints for picorv32 @ SKY130 (tt/25C/1.8V)
# Target: 50 MHz (20 ns) — conservative sign-off corner target

set sdc_version 2.1

# ---- clocks ----
create_clock -name clk -period 20.0 [get_ports clk]

# ---- IO delays (assume 10% of period budget at interface) ----
set_input_delay  -clock clk -max 2.0 [remove_from_collection [all_inputs] [get_ports clk]]
set_input_delay  -clock clk -min 0.5 [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay -clock clk -max 2.0 [all_outputs]
set_output_delay -clock clk -min 0.5 [all_outputs]

# ---- loads / drives ----
set_load 0.05 [all_outputs]
set_driving_cell -lib_cell sky130_fd_sc_hd__buf_1 [all_inputs]

# resetn is synchronous active-low (no async recovery arc)
