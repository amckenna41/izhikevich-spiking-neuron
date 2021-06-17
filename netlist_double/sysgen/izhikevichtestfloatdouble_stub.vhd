-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity izhikevichtestfloatdouble_stub is
  port (
    gateway_in : in std_logic_vector( 64-1 downto 0 );
    clk : in std_logic;
    gateway_out : out std_logic_vector( 64-1 downto 0 )
  );
end izhikevichtestfloatdouble_stub;
architecture structural of izhikevichtestfloatdouble_stub is 
begin
  sysgen_dut : entity xil_defaultlib.izhikevichtestfloatdouble 
  port map (
    gateway_in => gateway_in,
    clk => clk,
    gateway_out => gateway_out
  );
end structural;
