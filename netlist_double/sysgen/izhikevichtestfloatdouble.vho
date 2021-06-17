  sysgen_dut : entity xil_defaultlib.izhikevichtestfloatdouble 
  port map (
    gateway_in => gateway_in,
    clk => clk,
    gateway_out => gateway_out
  );
