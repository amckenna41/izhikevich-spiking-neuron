-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Jan 20 16:49:43 2021
-- Host        : ashel-0608 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               I:/netlist_fixed/hdl_netlist/izhikevichtestfixed1.srcs/sources_1/ip/izhikevichtestfixed1_c_addsub_v12_0_i0/izhikevichtestfixed1_c_addsub_v12_0_i0_stub.vhdl
-- Design      : izhikevichtestfixed1_c_addsub_v12_0_i0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tfbg676-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity izhikevichtestfixed1_c_addsub_v12_0_i0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 64 downto 0 );
    B : in STD_LOGIC_VECTOR ( 64 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 64 downto 0 )
  );

end izhikevichtestfixed1_c_addsub_v12_0_i0;

architecture stub of izhikevichtestfixed1_c_addsub_v12_0_i0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[64:0],B[64:0],CLK,CE,S[64:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_13,Vivado 2019.1";
begin
end;
