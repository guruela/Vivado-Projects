set_property SRC_FILE_INFO {cfile:d:/Xilinx/Projects/UART/UART.gen/sources_1/bd/myDesign/ip/myDesign_clk_wiz_0_0/myDesign_clk_wiz_0_0.xdc rfile:../../../UART.gen/sources_1/bd/myDesign/ip/myDesign_clk_wiz_0_0/myDesign_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
