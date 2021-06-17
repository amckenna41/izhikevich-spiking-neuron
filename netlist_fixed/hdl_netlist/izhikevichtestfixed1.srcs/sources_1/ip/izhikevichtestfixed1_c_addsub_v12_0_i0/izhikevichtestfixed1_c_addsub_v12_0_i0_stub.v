// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jan 20 16:49:43 2021
// Host        : ashel-0608 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               I:/netlist_fixed/hdl_netlist/izhikevichtestfixed1.srcs/sources_1/ip/izhikevichtestfixed1_c_addsub_v12_0_i0/izhikevichtestfixed1_c_addsub_v12_0_i0_stub.v
// Design      : izhikevichtestfixed1_c_addsub_v12_0_i0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tfbg676-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_13,Vivado 2019.1" *)
module izhikevichtestfixed1_c_addsub_v12_0_i0(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[64:0],B[64:0],CLK,CE,S[64:0]" */;
  input [64:0]A;
  input [64:0]B;
  input CLK;
  input CE;
  output [64:0]S;
endmodule
