create_clock -period 12.000 -name sys_clk [get_ports clk]
set_input_delay -clock sys_clk 2.000 [get_ports {A_in[*] B_in[*] opcode_in[*]}]
set_output_delay -clock sys_clk 2.000 [get_ports {result[*] zero_flag}]