//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Mon Sep  1 23:08:03 2025
//Host        : INBook_X1_Pro running 64-bit major release  (build 9200)
//Command     : generate_target myDesign_wrapper.bd
//Design      : myDesign_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module myDesign_wrapper
   (reset,
    rx_0,
    sys_clock,
    tx_0);
  input reset;
  input rx_0;
  input sys_clock;
  output tx_0;

  wire reset;
  wire rx_0;
  wire sys_clock;
  wire tx_0;

  myDesign myDesign_i
       (.reset(reset),
        .rx_0(rx_0),
        .sys_clock(sys_clock),
        .tx_0(tx_0));
endmodule
