-- Generated from Simulink block izhikevichTestFixed1_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity izhikevichtestfixed1_struct is
  port (
    gateway_in : in std_logic_vector( 64-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    gateway_out : out std_logic_vector( 64-1 downto 0 )
  );
end izhikevichtestfixed1_struct;
architecture structural of izhikevichtestfixed1_struct is 
  signal bv_u_s_net : std_logic_vector( 64-1 downto 0 );
  signal a_bv_u_p_net : std_logic_vector( 64-1 downto 0 );
  signal v_0_04v2_5v_u_j_140_s_net : std_logic_vector( 64-1 downto 0 );
  signal u_a_bv_u_s_net : std_logic_vector( 64-1 downto 0 );
  signal bv_p_net : std_logic_vector( 64-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 64-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 64-1 downto 0 );
  signal v_2_p_net : std_logic_vector( 64-1 downto 0 );
  signal gateway_in_net : std_logic_vector( 64-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal v_mux_y_net : std_logic_vector( 64-1 downto 0 );
  signal x0_04_op_net : std_logic_vector( 64-1 downto 0 );
  signal x0_04v2_5v_u_j_140_s_net : std_logic_vector( 64-1 downto 0 );
  signal x0_04v_2_5v_s_net : std_logic_vector( 64-1 downto 0 );
  signal j_140_s_net : std_logic_vector( 64-1 downto 0 );
  signal v_2_0_04_p_net : std_logic_vector( 64-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 64-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 64-1 downto 0 );
  signal delay_q_net : std_logic_vector( 64-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 64-1 downto 0 );
  signal x5v_p_net : std_logic_vector( 64-1 downto 0 );
  signal x0_04v_2_5v_u_s_net : std_logic_vector( 64-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 64-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 64-1 downto 0 );
  signal u_d_s_net : std_logic_vector( 64-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 64-1 downto 0 );
  signal u_mux_y_net : std_logic_vector( 64-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 64-1 downto 0 );
begin
  gateway_in_net <= gateway_in;
  gateway_out <= v_mux_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  x0_04 : entity xil_defaultlib.sysgen_constant_35e13058dc 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => x0_04_op_net
  );
  x0_04v2_5v_u_j_140 : entity xil_defaultlib.izhikevichtestfixed1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "izhikevichtestfixed1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 32,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => x0_04v_2_5v_u_s_net,
    b => j_140_s_net,
    clk => clk_net,
    ce => ce_net,
    s => x0_04v2_5v_u_j_140_s_net
  );
  x0_04v_2_5v : entity xil_defaultlib.izhikevichtestfixed1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "izhikevichtestfixed1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 32,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => v_2_0_04_p_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    s => x0_04v_2_5v_s_net
  );
  x0_04v_2_5v_u : entity xil_defaultlib.izhikevichtestfixed1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "izhikevichtestfixed1_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 32,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => x0_04v_2_5v_s_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    s => x0_04v_2_5v_u_s_net
  );
  x5v : entity xil_defaultlib.izhikevichtestfixed1_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "izhikevichtestfixed1_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => v_mux_y_net,
    b => constant2_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => x5v_p_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_85c9e3d5de 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_3f18486349 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_ec32efbc5f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_7f6c093904 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_7ffe492877 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_4de931074e 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_94173134ae 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  delay : entity xil_defaultlib.izhikevichtestfixed1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 64
  )
  port map (
    en => '1',
    rst => '0',
    d => x5v_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.izhikevichtestfixed1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 64
  )
  port map (
    en => '1',
    rst => '0',
    d => u_mux_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.izhikevichtestfixed1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 64
  )
  port map (
    en => '1',
    rst => '0',
    d => u_mux_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.izhikevichtestfixed1_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 64
  )
  port map (
    en => '1',
    rst => '0',
    d => u_mux_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.izhikevichtestfixed1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 64
  )
  port map (
    en => '1',
    rst => '0',
    d => u_d_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.izhikevichtestfixed1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 64
  )
  port map (
    en => '1',
    rst => '0',
    d => u_a_bv_u_s_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay7 : entity xil_defaultlib.izhikevichtestfixed1_xldelay 
  generic map (
    latency => 7,
    reg_retiming => 0,
    reset => 0,
    width => 64
  )
  port map (
    en => '1',
    rst => '0',
    d => v_mux_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  j_140 : entity xil_defaultlib.izhikevichtestfixed1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "izhikevichtestfixed1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 32,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => constant1_op_net,
    b => gateway_in_net,
    clk => clk_net,
    ce => ce_net,
    s => j_140_s_net
  );
  relational : entity xil_defaultlib.sysgen_relational_7b810557c3 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    a => v_0_04v2_5v_u_j_140_s_net,
    b => constant7_op_net,
    op => relational_op_net
  );
  u_mux : entity xil_defaultlib.sysgen_mux_acaa2b7c81 
  port map (
    clr => '0',
    sel => relational_op_net,
    d0 => delay5_q_net,
    d1 => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    y => u_mux_y_net
  );
  v_mux : entity xil_defaultlib.sysgen_mux_acaa2b7c81 
  port map (
    clr => '0',
    sel => relational_op_net,
    d0 => v_0_04v2_5v_u_j_140_s_net,
    d1 => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    y => v_mux_y_net
  );
  a_bv_u : entity xil_defaultlib.izhikevichtestfixed1_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "izhikevichtestfixed1_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => constant4_op_net,
    b => bv_u_s_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => a_bv_u_p_net
  );
  bv : entity xil_defaultlib.izhikevichtestfixed1_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "izhikevichtestfixed1_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => v_mux_y_net,
    b => constant8_op_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => bv_p_net
  );
  bv_u : entity xil_defaultlib.izhikevichtestfixed1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "izhikevichtestfixed1_c_addsub_v12_0_i1",
    extra_registers => 0,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 32,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => bv_p_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    s => bv_u_s_net
  );
  u_a_bv_u : entity xil_defaultlib.izhikevichtestfixed1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "izhikevichtestfixed1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 32,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => delay3_q_net,
    b => a_bv_u_p_net,
    clk => clk_net,
    ce => ce_net,
    s => u_a_bv_u_s_net
  );
  u_d : entity xil_defaultlib.izhikevichtestfixed1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "izhikevichtestfixed1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 32,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => constant5_op_net,
    b => u_a_bv_u_s_net,
    clk => clk_net,
    ce => ce_net,
    s => u_d_s_net
  );
  v_0_04v2_5v_u_j_140 : entity xil_defaultlib.izhikevichtestfixed1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 65,
    core_name0 => "izhikevichtestfixed1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 65,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 32,
    s_width => 64
  )
  port map (
    clr => '0',
    en => "1",
    a => x0_04v2_5v_u_j_140_s_net,
    b => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    s => v_0_04v2_5v_u_j_140_s_net
  );
  v_2 : entity xil_defaultlib.izhikevichtestfixed1_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "izhikevichtestfixed1_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => v_mux_y_net,
    b => v_mux_y_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => v_2_p_net
  );
  v_2_0_04 : entity xil_defaultlib.izhikevichtestfixed1_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 32,
    a_width => 64,
    b_arith => xlSigned,
    b_bin_pt => 32,
    b_width => 64,
    c_a_type => 0,
    c_a_width => 64,
    c_b_type => 0,
    c_b_width => 64,
    c_baat => 64,
    c_output_width => 128,
    c_type => 0,
    core_name0 => "izhikevichtestfixed1_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 1,
    p_arith => xlSigned,
    p_bin_pt => 32,
    p_width => 64,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => x0_04_op_net,
    b => v_2_p_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => v_2_0_04_p_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity izhikevichtestfixed1_default_clock_driver is
  port (
    izhikevichtestfixed1_sysclk : in std_logic;
    izhikevichtestfixed1_sysce : in std_logic;
    izhikevichtestfixed1_sysclr : in std_logic;
    izhikevichtestfixed1_clk1 : out std_logic;
    izhikevichtestfixed1_ce1 : out std_logic
  );
end izhikevichtestfixed1_default_clock_driver;
architecture structural of izhikevichtestfixed1_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => izhikevichtestfixed1_sysclk,
    sysce => izhikevichtestfixed1_sysce,
    sysclr => izhikevichtestfixed1_sysclr,
    clk => izhikevichtestfixed1_clk1,
    ce => izhikevichtestfixed1_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity izhikevichtestfixed1 is
  port (
    gateway_in : in std_logic_vector( 64-1 downto 0 );
    clk : in std_logic;
    gateway_out : out std_logic_vector( 64-1 downto 0 )
  );
end izhikevichtestfixed1;
architecture structural of izhikevichtestfixed1 is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "izhikevichtestfixed1,sysgen_core_2019_1,{,compilation=HDL Netlist,block_icon_display=Default,family=kintex7,part=xc7k325t,speed=-3,package=fbg676,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=12000,addsub=8,constant=8,delay=7,mult=5,mux=2,relational=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  izhikevichtestfixed1_default_clock_driver : entity xil_defaultlib.izhikevichtestfixed1_default_clock_driver 
  port map (
    izhikevichtestfixed1_sysclk => clk,
    izhikevichtestfixed1_sysce => '1',
    izhikevichtestfixed1_sysclr => '0',
    izhikevichtestfixed1_clk1 => clk_1_net,
    izhikevichtestfixed1_ce1 => ce_1_net
  );
  izhikevichtestfixed1_struct : entity xil_defaultlib.izhikevichtestfixed1_struct 
  port map (
    gateway_in => gateway_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    gateway_out => gateway_out
  );
end structural;
