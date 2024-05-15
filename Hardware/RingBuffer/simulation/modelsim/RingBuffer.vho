-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/15/2024 11:28:01"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RingBuffer IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	DAV : IN std_logic;
	CTS : IN std_logic;
	D : IN std_logic_vector(3 DOWNTO 0);
	Q : BUFFER std_logic_vector(3 DOWNTO 0);
	Wreg : BUFFER std_logic;
	DAC : BUFFER std_logic
	);
END RingBuffer;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wreg	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAC	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAV	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTS	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RingBuffer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_DAV : std_logic;
SIGNAL ww_CTS : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Wreg : std_logic;
SIGNAL ww_DAC : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RingBufferCtrl|Selector9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Wreg~output_o\ : std_logic;
SIGNAL \DAC~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DAV~input_o\ : std_logic;
SIGNAL \RingBufferCtrl|Selector4~0_combout\ : std_logic;
SIGNAL \CTS~input_o\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \MemoryAddressCtrl|s_enable~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S~combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_100~0_combout\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_100~1_combout\ : std_logic;
SIGNAL \RingBufferCtrl|comb~3_combout\ : std_logic;
SIGNAL \RingBufferCtrl|comb~1_combout\ : std_logic;
SIGNAL \RingBufferCtrl|comb~2_combout\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_100_218~combout\ : std_logic;
SIGNAL \RingBufferCtrl|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_101_202~combout\ : std_logic;
SIGNAL \RingBufferCtrl|CurrentState.STATE_101~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S~combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \RingBufferCtrl|Selector9~0_combout\ : std_logic;
SIGNAL \RingBufferCtrl|Selector9~0clkctrl_outclk\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_011_237~combout\ : std_logic;
SIGNAL \RingBufferCtrl|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \RingBufferCtrl|Selector1~0_combout\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_110_183~combout\ : std_logic;
SIGNAL \RingBufferCtrl|CurrentState.STATE_110~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S~combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \RingBufferCtrl|Selector8~1_combout\ : std_logic;
SIGNAL \RingBufferCtrl|Selector8~0_combout\ : std_logic;
SIGNAL \RingBufferCtrl|Selector8~2_combout\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_000_291~combout\ : std_logic;
SIGNAL \RingBufferCtrl|CurrentState.STATE_000~0_combout\ : std_logic;
SIGNAL \RingBufferCtrl|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \RingBufferCtrl|comb~0_combout\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_001_272~combout\ : std_logic;
SIGNAL \RingBufferCtrl|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \RingBufferCtrl|NextState.STATE_010_256~combout\ : std_logic;
SIGNAL \RingBufferCtrl|CurrentState.STATE_010~q\ : std_logic;
SIGNAL \RingBufferCtrl|selPG~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \MemoryAddressCtrl|mux|R[2]~2_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \R|ram~16_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \R|ram~24_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|mux|R[0]~0_combout\ : std_logic;
SIGNAL \MemoryAddressCtrl|mux|R[1]~1_combout\ : std_logic;
SIGNAL \R|ram~32_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \R|ram~28_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \R|ram~20_combout\ : std_logic;
SIGNAL \R|ram~33_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \rtl~12clkctrl_outclk\ : std_logic;
SIGNAL \R|ram~8_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \rtl~14clkctrl_outclk\ : std_logic;
SIGNAL \R|ram~0_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \rtl~13clkctrl_outclk\ : std_logic;
SIGNAL \R|ram~4_combout\ : std_logic;
SIGNAL \R|ram~34_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \rtl~15clkctrl_outclk\ : std_logic;
SIGNAL \R|ram~12_combout\ : std_logic;
SIGNAL \R|ram~35_combout\ : std_logic;
SIGNAL \R|ram~36_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \R|ram~5_combout\ : std_logic;
SIGNAL \R|ram~1_combout\ : std_logic;
SIGNAL \R|ram~39_combout\ : std_logic;
SIGNAL \R|ram~9_combout\ : std_logic;
SIGNAL \R|ram~13_combout\ : std_logic;
SIGNAL \R|ram~40_combout\ : std_logic;
SIGNAL \R|ram~29_combout\ : std_logic;
SIGNAL \R|ram~25_combout\ : std_logic;
SIGNAL \R|ram~17_combout\ : std_logic;
SIGNAL \R|ram~37_combout\ : std_logic;
SIGNAL \R|ram~21_combout\ : std_logic;
SIGNAL \R|ram~38_combout\ : std_logic;
SIGNAL \R|ram~41_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \R|ram~14_combout\ : std_logic;
SIGNAL \R|ram~2_combout\ : std_logic;
SIGNAL \R|ram~6_combout\ : std_logic;
SIGNAL \R|ram~44_combout\ : std_logic;
SIGNAL \R|ram~10_combout\ : std_logic;
SIGNAL \R|ram~45_combout\ : std_logic;
SIGNAL \R|ram~22_combout\ : std_logic;
SIGNAL \R|ram~18_combout\ : std_logic;
SIGNAL \R|ram~26_combout\ : std_logic;
SIGNAL \R|ram~42_combout\ : std_logic;
SIGNAL \R|ram~30_combout\ : std_logic;
SIGNAL \R|ram~43_combout\ : std_logic;
SIGNAL \R|ram~46_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \R|ram~15_combout\ : std_logic;
SIGNAL \R|ram~7_combout\ : std_logic;
SIGNAL \R|ram~3_combout\ : std_logic;
SIGNAL \R|ram~49_combout\ : std_logic;
SIGNAL \R|ram~11_combout\ : std_logic;
SIGNAL \R|ram~50_combout\ : std_logic;
SIGNAL \R|ram~31_combout\ : std_logic;
SIGNAL \R|ram~27_combout\ : std_logic;
SIGNAL \R|ram~19_combout\ : std_logic;
SIGNAL \R|ram~47_combout\ : std_logic;
SIGNAL \R|ram~23_combout\ : std_logic;
SIGNAL \R|ram~48_combout\ : std_logic;
SIGNAL \R|ram~51_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_DAV <= DAV;
ww_CTS <= CTS;
ww_D <= D;
Q <= ww_Q;
Wreg <= ww_Wreg;
DAC <= ww_DAC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~12_combout\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\RingBufferCtrl|Selector9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RingBufferCtrl|Selector9~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\rtl~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~15_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\rtl~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~14_combout\);

\rtl~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~13_combout\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y36_N9
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R|ram~36_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R|ram~41_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R|ram~46_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R|ram~51_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\Wreg~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RingBufferCtrl|CurrentState.STATE_100~q\,
	devoe => ww_devoe,
	o => \Wreg~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\DAC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RingBufferCtrl|CurrentState.STATE_011~q\,
	devoe => ww_devoe,
	o => \DAC~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y39_N29
\DAV~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAV,
	o => \DAV~input_o\);

-- Location: LCCOMB_X21_Y38_N12
\RingBufferCtrl|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|Selector4~0_combout\ = (\RingBufferCtrl|CurrentState.STATE_010~q\) # ((\RingBufferCtrl|CurrentState.STATE_011~q\ & \DAV~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_011~q\,
	datab => \DAV~input_o\,
	datad => \RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \RingBufferCtrl|Selector4~0_combout\);

-- Location: IOIBUF_X20_Y39_N8
\CTS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTS,
	o => \CTS~input_o\);

-- Location: LCCOMB_X19_Y38_N6
\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0_combout\ = !\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	combout => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0_combout\);

-- Location: IOIBUF_X31_Y0_N1
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G18
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y38_N22
\MemoryAddressCtrl|s_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|s_enable~0_combout\ = (\RingBufferCtrl|CurrentState.STATE_101~q\) # (\RingBufferCtrl|CurrentState.STATE_110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBufferCtrl|CurrentState.STATE_101~q\,
	datad => \RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \MemoryAddressCtrl|s_enable~0_combout\);

-- Location: FF_X19_Y38_N7
\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \MemoryAddressCtrl|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X19_Y38_N24
\MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S~combout\ = \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\ $ (((\RingBufferCtrl|CurrentState.STATE_110~q\ & ((\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\))) # 
-- (!\RingBufferCtrl|CurrentState.STATE_110~q\ & (\RingBufferCtrl|CurrentState.STATE_101~q\ & !\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_110~q\,
	datab => \RingBufferCtrl|CurrentState.STATE_101~q\,
	datac => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	combout => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S~combout\);

-- Location: FF_X19_Y38_N25
\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \MemoryAddressCtrl|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X18_Y38_N24
\RingBufferCtrl|NextState.STATE_100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_100~0_combout\ = (!\DAV~input_o\ & ((\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\) # ((\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\) # (\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	datab => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\,
	datac => \DAV~input_o\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\,
	combout => \RingBufferCtrl|NextState.STATE_100~0_combout\);

-- Location: LCCOMB_X18_Y38_N0
\RingBufferCtrl|NextState.STATE_100~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_100~1_combout\ = (\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\ & ((\CTS~input_o\) # ((\DAV~input_o\)))) # (!\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\ & (\CTS~input_o\ & 
-- ((\RingBufferCtrl|NextState.STATE_100~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datab => \CTS~input_o\,
	datac => \DAV~input_o\,
	datad => \RingBufferCtrl|NextState.STATE_100~0_combout\,
	combout => \RingBufferCtrl|NextState.STATE_100~1_combout\);

-- Location: LCCOMB_X17_Y38_N26
\RingBufferCtrl|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|comb~3_combout\ = ((\RingBufferCtrl|CurrentState.STATE_000~q\) # (!\RingBufferCtrl|NextState.STATE_100~1_combout\)) # (!\RingBufferCtrl|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|Selector9~0_combout\,
	datab => \RingBufferCtrl|NextState.STATE_100~1_combout\,
	datad => \RingBufferCtrl|CurrentState.STATE_000~q\,
	combout => \RingBufferCtrl|comb~3_combout\);

-- Location: LCCOMB_X18_Y38_N30
\RingBufferCtrl|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|comb~1_combout\ = (!\CTS~input_o\ & (\DAV~input_o\ & \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTS~input_o\,
	datac => \DAV~input_o\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	combout => \RingBufferCtrl|comb~1_combout\);

-- Location: LCCOMB_X17_Y38_N28
\RingBufferCtrl|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|comb~2_combout\ = (!\RingBufferCtrl|CurrentState.STATE_000~q\ & ((\RingBufferCtrl|comb~1_combout\) # (\RingBufferCtrl|NextState.STATE_100~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|comb~1_combout\,
	datab => \RingBufferCtrl|NextState.STATE_100~1_combout\,
	datad => \RingBufferCtrl|CurrentState.STATE_000~q\,
	combout => \RingBufferCtrl|comb~2_combout\);

-- Location: LCCOMB_X17_Y38_N16
\RingBufferCtrl|NextState.STATE_100_218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_100_218~combout\ = (\RingBufferCtrl|comb~2_combout\ & ((\RingBufferCtrl|NextState.STATE_100_218~combout\) # (!\RingBufferCtrl|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBufferCtrl|comb~3_combout\,
	datac => \RingBufferCtrl|comb~2_combout\,
	datad => \RingBufferCtrl|NextState.STATE_100_218~combout\,
	combout => \RingBufferCtrl|NextState.STATE_100_218~combout\);

-- Location: FF_X18_Y38_N3
\RingBufferCtrl|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RingBufferCtrl|NextState.STATE_100_218~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferCtrl|CurrentState.STATE_100~q\);

-- Location: LCCOMB_X18_Y38_N12
\RingBufferCtrl|NextState.STATE_101_202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_101_202~combout\ = (GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & ((\RingBufferCtrl|CurrentState.STATE_100~q\))) # (!GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & 
-- (\RingBufferCtrl|NextState.STATE_101_202~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|NextState.STATE_101_202~combout\,
	datab => \RingBufferCtrl|Selector9~0clkctrl_outclk\,
	datac => \RingBufferCtrl|CurrentState.STATE_100~q\,
	combout => \RingBufferCtrl|NextState.STATE_101_202~combout\);

-- Location: FF_X18_Y38_N13
\RingBufferCtrl|CurrentState.STATE_101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBufferCtrl|NextState.STATE_101_202~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferCtrl|CurrentState.STATE_101~q\);

-- Location: LCCOMB_X18_Y38_N28
\MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\ = (\RingBufferCtrl|CurrentState.STATE_110~q\ & (((\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\ & \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\)))) # 
-- (!\RingBufferCtrl|CurrentState.STATE_110~q\ & (((\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\) # (\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\)) # (!\RingBufferCtrl|CurrentState.STATE_101~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_110~q\,
	datab => \RingBufferCtrl|CurrentState.STATE_101~q\,
	datac => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\,
	combout => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\);

-- Location: LCCOMB_X18_Y38_N18
\MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S~combout\ = \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\ $ (((\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_110~q\ & 
-- \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\)) # (!\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ & (!\RingBufferCtrl|CurrentState.STATE_110~q\ & !\MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\,
	datab => \RingBufferCtrl|CurrentState.STATE_110~q\,
	datac => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\,
	combout => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S~combout\);

-- Location: FF_X18_Y38_N19
\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \MemoryAddressCtrl|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X18_Y38_N26
\RingBufferCtrl|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|Selector9~0_combout\ = ((\RingBufferCtrl|CurrentState.STATE_000~q\) # ((\CTS~input_o\) # (!\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\))) # (!\DAV~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DAV~input_o\,
	datab => \RingBufferCtrl|CurrentState.STATE_000~q\,
	datac => \CTS~input_o\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	combout => \RingBufferCtrl|Selector9~0_combout\);

-- Location: CLKCTRL_G1
\RingBufferCtrl|Selector9~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RingBufferCtrl|Selector9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RingBufferCtrl|Selector9~0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y38_N22
\RingBufferCtrl|NextState.STATE_011_237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_011_237~combout\ = (GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & (\RingBufferCtrl|Selector4~0_combout\)) # (!GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & ((\RingBufferCtrl|NextState.STATE_011_237~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|Selector4~0_combout\,
	datac => \RingBufferCtrl|NextState.STATE_011_237~combout\,
	datad => \RingBufferCtrl|Selector9~0clkctrl_outclk\,
	combout => \RingBufferCtrl|NextState.STATE_011_237~combout\);

-- Location: FF_X21_Y38_N1
\RingBufferCtrl|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RingBufferCtrl|NextState.STATE_011_237~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferCtrl|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X21_Y38_N28
\RingBufferCtrl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|Selector1~0_combout\ = (\RingBufferCtrl|CurrentState.STATE_011~q\ & !\DAV~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_011~q\,
	datad => \DAV~input_o\,
	combout => \RingBufferCtrl|Selector1~0_combout\);

-- Location: LCCOMB_X18_Y38_N14
\RingBufferCtrl|NextState.STATE_110_183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_110_183~combout\ = (GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & ((\RingBufferCtrl|Selector1~0_combout\))) # (!GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & (\RingBufferCtrl|NextState.STATE_110_183~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|NextState.STATE_110_183~combout\,
	datab => \RingBufferCtrl|Selector1~0_combout\,
	datac => \RingBufferCtrl|Selector9~0clkctrl_outclk\,
	combout => \RingBufferCtrl|NextState.STATE_110_183~combout\);

-- Location: FF_X18_Y38_N15
\RingBufferCtrl|CurrentState.STATE_110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBufferCtrl|NextState.STATE_110_183~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferCtrl|CurrentState.STATE_110~q\);

-- Location: LCCOMB_X19_Y38_N2
\MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S~combout\ = \RingBufferCtrl|CurrentState.STATE_110~q\ $ (\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ $ (!\MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_110~q\,
	datac => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\,
	combout => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S~combout\);

-- Location: FF_X19_Y38_N3
\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \MemoryAddressCtrl|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X18_Y38_N20
\RingBufferCtrl|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|Selector8~1_combout\ = (!\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ & (!\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\ & (!\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\ & !\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\,
	datab => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\,
	datac => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	combout => \RingBufferCtrl|Selector8~1_combout\);

-- Location: LCCOMB_X18_Y38_N10
\RingBufferCtrl|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|Selector8~0_combout\ = (!\RingBufferCtrl|CurrentState.STATE_000~q\ & !\DAV~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBufferCtrl|CurrentState.STATE_000~q\,
	datac => \DAV~input_o\,
	combout => \RingBufferCtrl|Selector8~0_combout\);

-- Location: LCCOMB_X18_Y38_N6
\RingBufferCtrl|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|Selector8~2_combout\ = (\MemoryAddressCtrl|s_enable~0_combout\) # ((\RingBufferCtrl|Selector8~0_combout\ & ((\RingBufferCtrl|Selector8~1_combout\) # (!\CTS~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|Selector8~1_combout\,
	datab => \RingBufferCtrl|Selector8~0_combout\,
	datac => \CTS~input_o\,
	datad => \MemoryAddressCtrl|s_enable~0_combout\,
	combout => \RingBufferCtrl|Selector8~2_combout\);

-- Location: LCCOMB_X18_Y38_N4
\RingBufferCtrl|NextState.STATE_000_291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_000_291~combout\ = (GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & (\RingBufferCtrl|Selector8~2_combout\)) # (!GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & ((\RingBufferCtrl|NextState.STATE_000_291~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|Selector8~2_combout\,
	datab => \RingBufferCtrl|NextState.STATE_000_291~combout\,
	datac => \RingBufferCtrl|Selector9~0clkctrl_outclk\,
	combout => \RingBufferCtrl|NextState.STATE_000_291~combout\);

-- Location: LCCOMB_X17_Y38_N6
\RingBufferCtrl|CurrentState.STATE_000~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|CurrentState.STATE_000~0_combout\ = !\RingBufferCtrl|NextState.STATE_000_291~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RingBufferCtrl|NextState.STATE_000_291~combout\,
	combout => \RingBufferCtrl|CurrentState.STATE_000~0_combout\);

-- Location: FF_X17_Y38_N7
\RingBufferCtrl|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBufferCtrl|CurrentState.STATE_000~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferCtrl|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X18_Y38_N2
\RingBufferCtrl|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_001~0_combout\ = (\DAV~input_o\ & (!\RingBufferCtrl|CurrentState.STATE_000~q\ & !\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DAV~input_o\,
	datab => \RingBufferCtrl|CurrentState.STATE_000~q\,
	datad => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	combout => \RingBufferCtrl|NextState.STATE_001~0_combout\);

-- Location: LCCOMB_X18_Y38_N8
\RingBufferCtrl|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|comb~0_combout\ = (\DAV~input_o\ & (!\RingBufferCtrl|CurrentState.STATE_000~q\ & ((!\CTS~input_o\) # (!\MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datab => \CTS~input_o\,
	datac => \DAV~input_o\,
	datad => \RingBufferCtrl|CurrentState.STATE_000~q\,
	combout => \RingBufferCtrl|comb~0_combout\);

-- Location: LCCOMB_X18_Y38_N16
\RingBufferCtrl|NextState.STATE_001_272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_001_272~combout\ = (\RingBufferCtrl|comb~0_combout\ & ((\RingBufferCtrl|NextState.STATE_001~0_combout\) # (\RingBufferCtrl|NextState.STATE_001_272~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBufferCtrl|NextState.STATE_001~0_combout\,
	datac => \RingBufferCtrl|comb~0_combout\,
	datad => \RingBufferCtrl|NextState.STATE_001_272~combout\,
	combout => \RingBufferCtrl|NextState.STATE_001_272~combout\);

-- Location: FF_X21_Y38_N29
\RingBufferCtrl|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RingBufferCtrl|NextState.STATE_001_272~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferCtrl|CurrentState.STATE_001~q\);

-- Location: LCCOMB_X21_Y38_N8
\RingBufferCtrl|NextState.STATE_010_256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|NextState.STATE_010_256~combout\ = (GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & (\RingBufferCtrl|CurrentState.STATE_001~q\)) # (!GLOBAL(\RingBufferCtrl|Selector9~0clkctrl_outclk\) & 
-- ((\RingBufferCtrl|NextState.STATE_010_256~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_001~q\,
	datac => \RingBufferCtrl|NextState.STATE_010_256~combout\,
	datad => \RingBufferCtrl|Selector9~0clkctrl_outclk\,
	combout => \RingBufferCtrl|NextState.STATE_010_256~combout\);

-- Location: FF_X21_Y38_N5
\RingBufferCtrl|CurrentState.STATE_010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \RingBufferCtrl|NextState.STATE_010_256~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBufferCtrl|CurrentState.STATE_010~q\);

-- Location: LCCOMB_X21_Y38_N0
\RingBufferCtrl|selPG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBufferCtrl|selPG~0_combout\ = (\RingBufferCtrl|CurrentState.STATE_010~q\) # ((\RingBufferCtrl|CurrentState.STATE_011~q\) # (\RingBufferCtrl|CurrentState.STATE_001~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_011~q\,
	datad => \RingBufferCtrl|CurrentState.STATE_001~q\,
	combout => \RingBufferCtrl|selPG~0_combout\);

-- Location: LCCOMB_X19_Y38_N28
\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ = \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\ $ (\RingBufferCtrl|CurrentState.STATE_101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBufferCtrl|CurrentState.STATE_101~q\,
	combout => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\);

-- Location: FF_X19_Y38_N29
\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\);

-- Location: LCCOMB_X19_Y38_N16
\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ = \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\ $ (((\RingBufferCtrl|CurrentState.STATE_101~q\ & \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_101~q\,
	datac => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\);

-- Location: FF_X19_Y38_N17
\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X19_Y38_N18
\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ = \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\ $ (((\RingBufferCtrl|CurrentState.STATE_101~q\ & (\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\ & 
-- \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_101~q\,
	datab => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\);

-- Location: FF_X19_Y38_N19
\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X21_Y38_N4
\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ = \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ $ (\RingBufferCtrl|CurrentState.STATE_110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\);

-- Location: FF_X21_Y38_N13
\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\);

-- Location: LCCOMB_X21_Y38_N16
\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ = \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ $ (((\RingBufferCtrl|CurrentState.STATE_110~q\ & \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_110~q\,
	datac => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\);

-- Location: FF_X21_Y38_N17
\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X21_Y38_N2
\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ = \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ $ (((\RingBufferCtrl|CurrentState.STATE_110~q\ & (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & 
-- \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|CurrentState.STATE_110~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\);

-- Location: FF_X21_Y38_N3
\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X19_Y38_N12
\MemoryAddressCtrl|mux|R[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|mux|R[2]~2_combout\ = (\RingBufferCtrl|selPG~0_combout\ & ((\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\))) # (!\RingBufferCtrl|selPG~0_combout\ & (\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|selPG~0_combout\,
	datab => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	combout => \MemoryAddressCtrl|mux|R[2]~2_combout\);

-- Location: IOIBUF_X20_Y39_N1
\D[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X21_Y38_N6
\rtl~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (!\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_010~q\ & !\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G12
\rtl~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~10clkctrl_outclk\);

-- Location: LCCOMB_X19_Y36_N10
\R|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~16_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\D[0]~input_o\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\R|ram~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~16_combout\,
	datac => \D[0]~input_o\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \R|ram~16_combout\);

-- Location: LCCOMB_X21_Y38_N20
\rtl~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (!\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_010~q\ & \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G14
\rtl~9clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~9clkctrl_outclk\);

-- Location: LCCOMB_X20_Y36_N24
\R|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~24_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\R|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \R|ram~24_combout\,
	combout => \R|ram~24_combout\);

-- Location: LCCOMB_X19_Y38_N30
\MemoryAddressCtrl|mux|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|mux|R[0]~0_combout\ = (\RingBufferCtrl|selPG~0_combout\ & (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\)) # (!\RingBufferCtrl|selPG~0_combout\ & ((\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBufferCtrl|selPG~0_combout\,
	datac => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \MemoryAddressCtrl|mux|R[0]~0_combout\);

-- Location: LCCOMB_X20_Y38_N16
\MemoryAddressCtrl|mux|R[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MemoryAddressCtrl|mux|R[1]~1_combout\ = (\RingBufferCtrl|selPG~0_combout\ & ((\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\))) # (!\RingBufferCtrl|selPG~0_combout\ & (\MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBufferCtrl|selPG~0_combout\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \MemoryAddressCtrl|mux|R[1]~1_combout\);

-- Location: LCCOMB_X19_Y36_N12
\R|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~32_combout\ = (\MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\R|ram~24_combout\))) # 
-- (!\MemoryAddressCtrl|mux|R[1]~1_combout\ & (\R|ram~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~16_combout\,
	datab => \R|ram~24_combout\,
	datac => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \R|ram~32_combout\);

-- Location: LCCOMB_X21_Y38_N18
\rtl~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_010~q\ & \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G2
\rtl~11clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~11clkctrl_outclk\);

-- Location: LCCOMB_X19_Y36_N16
\R|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~28_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\R|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \R|ram~28_combout\,
	combout => \R|ram~28_combout\);

-- Location: LCCOMB_X21_Y38_N30
\rtl~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_010~q\ & !\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G0
\rtl~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~8clkctrl_outclk\);

-- Location: LCCOMB_X19_Y36_N28
\R|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~20_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\R|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \R|ram~20_combout\,
	combout => \R|ram~20_combout\);

-- Location: LCCOMB_X19_Y36_N26
\R|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~33_combout\ = (\R|ram~32_combout\ & ((\R|ram~28_combout\) # ((!\MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\R|ram~32_combout\ & (((\MemoryAddressCtrl|mux|R[0]~0_combout\ & \R|ram~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~32_combout\,
	datab => \R|ram~28_combout\,
	datac => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \R|ram~20_combout\,
	combout => \R|ram~33_combout\);

-- Location: LCCOMB_X21_Y38_N14
\rtl~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (!\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (!\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_010~q\ & \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \rtl~12_combout\);

-- Location: CLKCTRL_G13
\rtl~12clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~12clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~12clkctrl_outclk\);

-- Location: LCCOMB_X20_Y35_N12
\R|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~8_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & ((\D[0]~input_o\))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & (\R|ram~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~8_combout\,
	datac => \D[0]~input_o\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \R|ram~8_combout\);

-- Location: LCCOMB_X21_Y38_N10
\rtl~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (!\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (!\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_010~q\ & !\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \rtl~14_combout\);

-- Location: CLKCTRL_G11
\rtl~14clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~14clkctrl_outclk\);

-- Location: LCCOMB_X20_Y35_N18
\R|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~0_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\R|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \R|ram~0_combout\,
	combout => \R|ram~0_combout\);

-- Location: LCCOMB_X21_Y38_N26
\rtl~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (!\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_010~q\ & !\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	combout => \rtl~13_combout\);

-- Location: CLKCTRL_G10
\rtl~13clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~13clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~13clkctrl_outclk\);

-- Location: LCCOMB_X20_Y36_N30
\R|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~4_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\R|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[0]~input_o\,
	datac => \R|ram~4_combout\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \R|ram~4_combout\);

-- Location: LCCOMB_X20_Y35_N28
\R|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~34_combout\ = (\MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\R|ram~4_combout\) # (\MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & (\R|ram~0_combout\ & ((!\MemoryAddressCtrl|mux|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datab => \R|ram~0_combout\,
	datac => \R|ram~4_combout\,
	datad => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \R|ram~34_combout\);

-- Location: LCCOMB_X21_Y38_N24
\rtl~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (!\MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBufferCtrl|CurrentState.STATE_010~q\ & \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \rtl~15_combout\);

-- Location: CLKCTRL_G4
\rtl~15clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~15clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~15clkctrl_outclk\);

-- Location: LCCOMB_X20_Y37_N20
\R|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~12_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\D[0]~input_o\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\R|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[0]~input_o\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \R|ram~12_combout\,
	combout => \R|ram~12_combout\);

-- Location: LCCOMB_X20_Y35_N6
\R|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~35_combout\ = (\R|ram~34_combout\ & (((\R|ram~12_combout\) # (!\MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\R|ram~34_combout\ & (\R|ram~8_combout\ & ((\MemoryAddressCtrl|mux|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~8_combout\,
	datab => \R|ram~34_combout\,
	datac => \R|ram~12_combout\,
	datad => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \R|ram~35_combout\);

-- Location: LCCOMB_X19_Y36_N20
\R|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~36_combout\ = (\MemoryAddressCtrl|mux|R[2]~2_combout\ & (\R|ram~33_combout\)) # (!\MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\R|ram~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \R|ram~33_combout\,
	datad => \R|ram~35_combout\,
	combout => \R|ram~36_combout\);

-- Location: IOIBUF_X22_Y39_N22
\D[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X22_Y36_N28
\R|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~5_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\R|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \rtl~13clkctrl_outclk\,
	datad => \R|ram~5_combout\,
	combout => \R|ram~5_combout\);

-- Location: LCCOMB_X22_Y37_N18
\R|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~1_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\R|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \rtl~14clkctrl_outclk\,
	datad => \R|ram~1_combout\,
	combout => \R|ram~1_combout\);

-- Location: LCCOMB_X22_Y37_N24
\R|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~39_combout\ = (\MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\MemoryAddressCtrl|mux|R[0]~0_combout\ & (\R|ram~5_combout\)) # 
-- (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\R|ram~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \R|ram~5_combout\,
	datac => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \R|ram~1_combout\,
	combout => \R|ram~39_combout\);

-- Location: LCCOMB_X19_Y37_N18
\R|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~9_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\R|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \rtl~12clkctrl_outclk\,
	datad => \R|ram~9_combout\,
	combout => \R|ram~9_combout\);

-- Location: LCCOMB_X19_Y37_N28
\R|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~13_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\R|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \R|ram~13_combout\,
	combout => \R|ram~13_combout\);

-- Location: LCCOMB_X19_Y37_N16
\R|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~40_combout\ = (\R|ram~39_combout\ & (((\R|ram~13_combout\) # (!\MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\R|ram~39_combout\ & (\R|ram~9_combout\ & (\MemoryAddressCtrl|mux|R[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~39_combout\,
	datab => \R|ram~9_combout\,
	datac => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \R|ram~13_combout\,
	combout => \R|ram~40_combout\);

-- Location: LCCOMB_X19_Y36_N30
\R|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~29_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\R|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \R|ram~29_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \R|ram~29_combout\);

-- Location: LCCOMB_X20_Y36_N28
\R|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~25_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\R|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[1]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \R|ram~25_combout\,
	combout => \R|ram~25_combout\);

-- Location: LCCOMB_X19_Y36_N24
\R|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~17_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\D[1]~input_o\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\R|ram~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R|ram~17_combout\,
	datac => \D[1]~input_o\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \R|ram~17_combout\);

-- Location: LCCOMB_X19_Y36_N22
\R|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~37_combout\ = (\MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\R|ram~25_combout\) # ((\MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\MemoryAddressCtrl|mux|R[1]~1_combout\ & (((!\MemoryAddressCtrl|mux|R[0]~0_combout\ & \R|ram~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \R|ram~25_combout\,
	datac => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \R|ram~17_combout\,
	combout => \R|ram~37_combout\);

-- Location: LCCOMB_X19_Y36_N18
\R|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~21_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\D[1]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\R|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[1]~input_o\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \R|ram~21_combout\,
	combout => \R|ram~21_combout\);

-- Location: LCCOMB_X19_Y36_N8
\R|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~38_combout\ = (\R|ram~37_combout\ & ((\R|ram~29_combout\) # ((!\MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\R|ram~37_combout\ & (((\MemoryAddressCtrl|mux|R[0]~0_combout\ & \R|ram~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~29_combout\,
	datab => \R|ram~37_combout\,
	datac => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \R|ram~21_combout\,
	combout => \R|ram~38_combout\);

-- Location: LCCOMB_X19_Y36_N6
\R|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~41_combout\ = (\MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\R|ram~38_combout\))) # (!\MemoryAddressCtrl|mux|R[2]~2_combout\ & (\R|ram~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|mux|R[2]~2_combout\,
	datab => \R|ram~40_combout\,
	datac => \R|ram~38_combout\,
	combout => \R|ram~41_combout\);

-- Location: IOIBUF_X20_Y39_N15
\D[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LCCOMB_X21_Y37_N24
\R|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~14_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\R|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \R|ram~14_combout\,
	combout => \R|ram~14_combout\);

-- Location: LCCOMB_X20_Y37_N12
\R|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~2_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & ((\D[2]~input_o\))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & (\R|ram~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~2_combout\,
	datac => \D[2]~input_o\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \R|ram~2_combout\);

-- Location: LCCOMB_X20_Y36_N4
\R|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~6_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\R|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \R|ram~6_combout\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \R|ram~6_combout\);

-- Location: LCCOMB_X20_Y37_N8
\R|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~44_combout\ = (\MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\MemoryAddressCtrl|mux|R[1]~1_combout\) # (\R|ram~6_combout\)))) # (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & (\R|ram~2_combout\ & (!\MemoryAddressCtrl|mux|R[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~2_combout\,
	datab => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \R|ram~6_combout\,
	combout => \R|ram~44_combout\);

-- Location: LCCOMB_X20_Y37_N18
\R|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~10_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\R|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~input_o\,
	datac => \rtl~12clkctrl_outclk\,
	datad => \R|ram~10_combout\,
	combout => \R|ram~10_combout\);

-- Location: LCCOMB_X20_Y37_N30
\R|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~45_combout\ = (\MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\R|ram~44_combout\ & (\R|ram~14_combout\)) # (!\R|ram~44_combout\ & ((\R|ram~10_combout\))))) # (!\MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\R|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \R|ram~14_combout\,
	datac => \R|ram~44_combout\,
	datad => \R|ram~10_combout\,
	combout => \R|ram~45_combout\);

-- Location: LCCOMB_X21_Y36_N12
\R|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~22_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\R|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \R|ram~22_combout\,
	combout => \R|ram~22_combout\);

-- Location: LCCOMB_X21_Y36_N6
\R|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~18_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\D[2]~input_o\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\R|ram~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~18_combout\,
	datac => \D[2]~input_o\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \R|ram~18_combout\);

-- Location: LCCOMB_X20_Y36_N18
\R|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~26_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\R|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \R|ram~26_combout\,
	combout => \R|ram~26_combout\);

-- Location: LCCOMB_X21_Y36_N8
\R|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~42_combout\ = (\MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\R|ram~26_combout\))) # 
-- (!\MemoryAddressCtrl|mux|R[1]~1_combout\ & (\R|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~18_combout\,
	datab => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \R|ram~26_combout\,
	datad => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \R|ram~42_combout\);

-- Location: LCCOMB_X21_Y36_N24
\R|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~30_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\D[2]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\R|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D[2]~input_o\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \R|ram~30_combout\,
	combout => \R|ram~30_combout\);

-- Location: LCCOMB_X21_Y36_N10
\R|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~43_combout\ = (\MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\R|ram~42_combout\ & ((\R|ram~30_combout\))) # (!\R|ram~42_combout\ & (\R|ram~22_combout\)))) # (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\R|ram~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~22_combout\,
	datab => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \R|ram~42_combout\,
	datad => \R|ram~30_combout\,
	combout => \R|ram~43_combout\);

-- Location: LCCOMB_X21_Y36_N20
\R|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~46_combout\ = (\MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\R|ram~43_combout\))) # (!\MemoryAddressCtrl|mux|R[2]~2_combout\ & (\R|ram~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~45_combout\,
	datac => \MemoryAddressCtrl|mux|R[2]~2_combout\,
	datad => \R|ram~43_combout\,
	combout => \R|ram~46_combout\);

-- Location: IOIBUF_X24_Y39_N29
\D[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X21_Y37_N10
\R|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~15_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\R|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \R|ram~15_combout\,
	combout => \R|ram~15_combout\);

-- Location: LCCOMB_X22_Y36_N22
\R|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~7_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\R|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \R|ram~7_combout\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \R|ram~7_combout\);

-- Location: LCCOMB_X21_Y37_N4
\R|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~3_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\R|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \R|ram~3_combout\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \R|ram~3_combout\);

-- Location: LCCOMB_X21_Y36_N14
\R|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~49_combout\ = (\MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\MemoryAddressCtrl|mux|R[0]~0_combout\ & (\R|ram~7_combout\)) # 
-- (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\R|ram~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \R|ram~7_combout\,
	datac => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \R|ram~3_combout\,
	combout => \R|ram~49_combout\);

-- Location: LCCOMB_X21_Y37_N14
\R|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~11_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\R|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \R|ram~11_combout\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \R|ram~11_combout\);

-- Location: LCCOMB_X21_Y36_N4
\R|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~50_combout\ = (\R|ram~49_combout\ & ((\R|ram~15_combout\) # ((!\MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\R|ram~49_combout\ & (((\R|ram~11_combout\ & \MemoryAddressCtrl|mux|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~15_combout\,
	datab => \R|ram~49_combout\,
	datac => \R|ram~11_combout\,
	datad => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \R|ram~50_combout\);

-- Location: LCCOMB_X21_Y36_N26
\R|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~31_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\R|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \R|ram~31_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \R|ram~31_combout\);

-- Location: LCCOMB_X23_Y36_N0
\R|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~27_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\R|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \R|ram~27_combout\,
	combout => \R|ram~27_combout\);

-- Location: LCCOMB_X21_Y36_N16
\R|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~19_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\D[3]~input_o\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\R|ram~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R|ram~19_combout\,
	datac => \D[3]~input_o\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \R|ram~19_combout\);

-- Location: LCCOMB_X21_Y36_N22
\R|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~47_combout\ = (\MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\MemoryAddressCtrl|mux|R[1]~1_combout\ & (\R|ram~27_combout\)) # 
-- (!\MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\R|ram~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~27_combout\,
	datab => \R|ram~19_combout\,
	datac => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \R|ram~47_combout\);

-- Location: LCCOMB_X21_Y36_N18
\R|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~23_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\D[3]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\R|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[3]~input_o\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \R|ram~23_combout\,
	combout => \R|ram~23_combout\);

-- Location: LCCOMB_X21_Y36_N28
\R|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~48_combout\ = (\MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\R|ram~47_combout\ & (\R|ram~31_combout\)) # (!\R|ram~47_combout\ & ((\R|ram~23_combout\))))) # (!\MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\R|ram~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R|ram~31_combout\,
	datab => \MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \R|ram~47_combout\,
	datad => \R|ram~23_combout\,
	combout => \R|ram~48_combout\);

-- Location: LCCOMB_X21_Y36_N30
\R|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R|ram~51_combout\ = (\MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\R|ram~48_combout\))) # (!\MemoryAddressCtrl|mux|R[2]~2_combout\ & (\R|ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R|ram~50_combout\,
	datac => \MemoryAddressCtrl|mux|R[2]~2_combout\,
	datad => \R|ram~48_combout\,
	combout => \R|ram~51_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Wreg <= \Wreg~output_o\;

ww_DAC <= \DAC~output_o\;
END structure;


