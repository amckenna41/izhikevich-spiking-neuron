// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jan 20 16:49:48 2021
// Host        : ashel-0608 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ izhikevichtestfixed1_mult_gen_v12_0_i0_stub.v
// Design      : izhikevichtestfixed1_mult_gen_v12_0_i0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tfbg676-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_15,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK, A, B, CE, SCLR, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[63:0],B[63:0],CE,SCLR,P[127:0]" */;
  input CLK;
  input [63:0]A;
  input [63:0]B;
  input CE;
  input SCLR;
  output [127:0]P;
endmodule
