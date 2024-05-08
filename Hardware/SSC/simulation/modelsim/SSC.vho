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

-- DATE "04/24/2024 10:07:26"

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

ENTITY 	SSC IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	SC_sel : IN std_logic;
	SCLK : IN std_logic;
	SDX : IN std_logic;
	WrD : OUT std_logic;
	Dout : OUT std_logic_vector(6 DOWNTO 0);
	accept : IN std_logic
	);
END SSC;

-- Design Ports Information
-- WrD	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC_sel	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accept	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SSC IS
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
SIGNAL ww_SC_sel : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_WrD : std_logic;
SIGNAL ww_Dout : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_accept : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \WrD~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Dout[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \SC_sel~input_o\ : std_logic;
SIGNAL \accept~input_o\ : std_logic;
SIGNAL \SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\ : std_logic;
SIGNAL \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\ : std_logic;
SIGNAL \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\ : std_logic;
SIGNAL \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \SReceiver|SC|Selector2~1_combout\ : std_logic;
SIGNAL \SReceiver|SC|Selector1~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \SReceiver|SC|CurrentState.STATE_010~q\ : std_logic;
SIGNAL \SReceiver|SC|Selector2~0_combout\ : std_logic;
SIGNAL \SReceiver|SC|Selector2~2_combout\ : std_logic;
SIGNAL \SReceiver|SC|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \SReceiver|SC|Selector0~0_combout\ : std_logic;
SIGNAL \SReceiver|SC|Selector0~1_combout\ : std_logic;
SIGNAL \SReceiver|SC|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \SReceiver|SC|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \SReceiver|SC|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \SReceiver|SC|Selector3~0_combout\ : std_logic;
SIGNAL \SReceiver|SC|Selector3~1_combout\ : std_logic;
SIGNAL \SReceiver|SC|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U1|Q~feeder_combout\ : std_logic;
SIGNAL \SReceiver|SC|WideOr0~0_combout\ : std_logic;
SIGNAL \SReceiver|ShRegister|U1|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U2|Q~feeder_combout\ : std_logic;
SIGNAL \SReceiver|ShRegister|U2|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U3|Q~feeder_combout\ : std_logic;
SIGNAL \SReceiver|ShRegister|U3|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U4|Q~feeder_combout\ : std_logic;
SIGNAL \SReceiver|ShRegister|U4|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U5|Q~feeder_combout\ : std_logic;
SIGNAL \SReceiver|ShRegister|U5|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U6|Q~feeder_combout\ : std_logic;
SIGNAL \SReceiver|ShRegister|U6|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U7|Q~feeder_combout\ : std_logic;
SIGNAL \SReceiver|ShRegister|U7|Q~q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_SC_sel <= SC_sel;
ww_SCLK <= SCLK;
ww_SDX <= SDX;
WrD <= ww_WrD;
Dout <= ww_Dout;
ww_accept <= accept;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\SCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCLK~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\ <= NOT \SReceiver|SC|CurrentState.STATE_001~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X49_Y54_N23
\WrD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SReceiver|SC|CurrentState.STATE_100~q\,
	devoe => ww_devoe,
	o => \WrD~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SReceiver|ShRegister|U1|Q~q\,
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SReceiver|ShRegister|U2|Q~q\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SReceiver|ShRegister|U3|Q~q\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SReceiver|ShRegister|U4|Q~q\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SReceiver|ShRegister|U5|Q~q\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\Dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SReceiver|ShRegister|U6|Q~q\,
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\Dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SReceiver|ShRegister|U7|Q~q\,
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X0_Y18_N15
\SCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCLK,
	o => \SCLK~input_o\);

-- Location: CLKCTRL_G3
\SCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N15
\SDX~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDX,
	o => \SDX~input_o\);

-- Location: LCCOMB_X46_Y53_N14
\SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ = \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ $ (\SDX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datad => \SDX~input_o\,
	combout => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\SC_sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SC_sel,
	o => \SC_sel~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\accept~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_accept,
	o => \accept~input_o\);

-- Location: LCCOMB_X46_Y53_N18
\SReceiver|Counter|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\ = !\SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: FF_X46_Y53_N19
\SReceiver|Counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X46_Y53_N28
\SReceiver|Counter|U1|CC_Reg|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\ = \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ $ (\SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\);

-- Location: FF_X46_Y53_N29
\SReceiver|Counter|U1|CC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X46_Y53_N30
\SReceiver|Counter|U1|CC_Reg|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\ = \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ $ (((\SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	datad => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\);

-- Location: FF_X46_Y53_N31
\SReceiver|Counter|U1|CC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X46_Y53_N26
\SReceiver|Counter|U1|CC_Reg|FFD4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\ = \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ $ (((\SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & (\SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ & \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datab => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\);

-- Location: FF_X46_Y53_N27
\SReceiver|Counter|U1|CC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X46_Y53_N4
\SReceiver|SC|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector2~1_combout\ = (\SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ & \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \SReceiver|SC|Selector2~1_combout\);

-- Location: LCCOMB_X46_Y53_N10
\SReceiver|SC|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector1~0_combout\ = (!\SC_sel~input_o\ & ((\SReceiver|SC|CurrentState.STATE_001~q\) # ((\SReceiver|SC|CurrentState.STATE_010~q\ & !\SReceiver|SC|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_sel~input_o\,
	datab => \SReceiver|SC|CurrentState.STATE_001~q\,
	datac => \SReceiver|SC|CurrentState.STATE_010~q\,
	datad => \SReceiver|SC|Selector2~1_combout\,
	combout => \SReceiver|SC|Selector1~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
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

-- Location: CLKCTRL_G2
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

-- Location: FF_X46_Y53_N11
\SReceiver|SC|CurrentState.STATE_010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SReceiver|SC|Selector1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|SC|CurrentState.STATE_010~q\);

-- Location: LCCOMB_X46_Y53_N8
\SReceiver|SC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector2~0_combout\ = (!\SC_sel~input_o\ & (\SReceiver|SC|CurrentState.STATE_011~q\ & ((!\SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\) # (!\SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_sel~input_o\,
	datab => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \SReceiver|SC|CurrentState.STATE_011~q\,
	combout => \SReceiver|SC|Selector2~0_combout\);

-- Location: LCCOMB_X46_Y53_N6
\SReceiver|SC|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector2~2_combout\ = (\SReceiver|SC|Selector2~0_combout\) # ((\SReceiver|SC|CurrentState.STATE_010~q\ & (!\SC_sel~input_o\ & \SReceiver|SC|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|SC|CurrentState.STATE_010~q\,
	datab => \SC_sel~input_o\,
	datac => \SReceiver|SC|Selector2~0_combout\,
	datad => \SReceiver|SC|Selector2~1_combout\,
	combout => \SReceiver|SC|Selector2~2_combout\);

-- Location: FF_X46_Y53_N7
\SReceiver|SC|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SReceiver|SC|Selector2~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|SC|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X46_Y53_N22
\SReceiver|SC|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector0~0_combout\ = (\SReceiver|SC|CurrentState.STATE_011~q\ & (\SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & (\SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ & \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|SC|CurrentState.STATE_011~q\,
	datab => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	combout => \SReceiver|SC|Selector0~0_combout\);

-- Location: LCCOMB_X46_Y53_N12
\SReceiver|SC|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector0~1_combout\ = (\SReceiver|SC|CurrentState.STATE_100~q\ & (((!\accept~input_o\)))) # (!\SReceiver|SC|CurrentState.STATE_100~q\ & (!\SC_sel~input_o\ & ((!\SReceiver|SC|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_sel~input_o\,
	datab => \accept~input_o\,
	datac => \SReceiver|SC|Selector0~0_combout\,
	datad => \SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \SReceiver|SC|Selector0~1_combout\);

-- Location: FF_X46_Y53_N13
\SReceiver|SC|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SReceiver|SC|Selector0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|SC|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X46_Y53_N20
\SReceiver|SC|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|NextState.STATE_001~0_combout\ = (!\SC_sel~input_o\ & !\SReceiver|SC|CurrentState.STATE_000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC_sel~input_o\,
	datad => \SReceiver|SC|CurrentState.STATE_000~q\,
	combout => \SReceiver|SC|NextState.STATE_001~0_combout\);

-- Location: FF_X46_Y53_N21
\SReceiver|SC|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SReceiver|SC|NextState.STATE_001~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|SC|CurrentState.STATE_001~q\);

-- Location: FF_X46_Y53_N15
\SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X46_Y53_N16
\SReceiver|SC|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector3~0_combout\ = (!\SC_sel~input_o\ & (\SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & (\SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ & \SReceiver|SC|CurrentState.STATE_011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_sel~input_o\,
	datab => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \SReceiver|SC|CurrentState.STATE_011~q\,
	combout => \SReceiver|SC|Selector3~0_combout\);

-- Location: LCCOMB_X46_Y53_N24
\SReceiver|SC|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector3~1_combout\ = (\SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & (!\accept~input_o\ & (\SReceiver|SC|CurrentState.STATE_100~q\))) # (!\SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & ((\SReceiver|SC|Selector3~0_combout\) # 
-- ((!\accept~input_o\ & \SReceiver|SC|CurrentState.STATE_100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datab => \accept~input_o\,
	datac => \SReceiver|SC|CurrentState.STATE_100~q\,
	datad => \SReceiver|SC|Selector3~0_combout\,
	combout => \SReceiver|SC|Selector3~1_combout\);

-- Location: FF_X46_Y53_N25
\SReceiver|SC|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SReceiver|SC|Selector3~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|SC|CurrentState.STATE_100~q\);

-- Location: LCCOMB_X47_Y53_N12
\SReceiver|ShRegister|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|ShRegister|U1|Q~feeder_combout\ = \SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDX~input_o\,
	combout => \SReceiver|ShRegister|U1|Q~feeder_combout\);

-- Location: LCCOMB_X47_Y53_N30
\SReceiver|SC|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|WideOr0~0_combout\ = (\SReceiver|SC|CurrentState.STATE_011~q\) # (\SReceiver|SC|CurrentState.STATE_100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SReceiver|SC|CurrentState.STATE_011~q\,
	datad => \SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \SReceiver|SC|WideOr0~0_combout\);

-- Location: FF_X47_Y53_N13
\SReceiver|ShRegister|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|ShRegister|U1|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U1|Q~q\);

-- Location: LCCOMB_X47_Y53_N10
\SReceiver|ShRegister|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|ShRegister|U2|Q~feeder_combout\ = \SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SReceiver|ShRegister|U1|Q~q\,
	combout => \SReceiver|ShRegister|U2|Q~feeder_combout\);

-- Location: FF_X47_Y53_N11
\SReceiver|ShRegister|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|ShRegister|U2|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U2|Q~q\);

-- Location: LCCOMB_X47_Y53_N20
\SReceiver|ShRegister|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|ShRegister|U3|Q~feeder_combout\ = \SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SReceiver|ShRegister|U2|Q~q\,
	combout => \SReceiver|ShRegister|U3|Q~feeder_combout\);

-- Location: FF_X47_Y53_N21
\SReceiver|ShRegister|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|ShRegister|U3|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U3|Q~q\);

-- Location: LCCOMB_X47_Y53_N6
\SReceiver|ShRegister|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|ShRegister|U4|Q~feeder_combout\ = \SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SReceiver|ShRegister|U3|Q~q\,
	combout => \SReceiver|ShRegister|U4|Q~feeder_combout\);

-- Location: FF_X47_Y53_N7
\SReceiver|ShRegister|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|ShRegister|U4|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U4|Q~q\);

-- Location: LCCOMB_X47_Y53_N28
\SReceiver|ShRegister|U5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|ShRegister|U5|Q~feeder_combout\ = \SReceiver|ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SReceiver|ShRegister|U4|Q~q\,
	combout => \SReceiver|ShRegister|U5|Q~feeder_combout\);

-- Location: FF_X47_Y53_N29
\SReceiver|ShRegister|U5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|ShRegister|U5|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U5|Q~q\);

-- Location: LCCOMB_X47_Y53_N18
\SReceiver|ShRegister|U6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|ShRegister|U6|Q~feeder_combout\ = \SReceiver|ShRegister|U5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SReceiver|ShRegister|U5|Q~q\,
	combout => \SReceiver|ShRegister|U6|Q~feeder_combout\);

-- Location: FF_X47_Y53_N19
\SReceiver|ShRegister|U6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|ShRegister|U6|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U6|Q~q\);

-- Location: LCCOMB_X47_Y53_N24
\SReceiver|ShRegister|U7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|ShRegister|U7|Q~feeder_combout\ = \SReceiver|ShRegister|U6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SReceiver|ShRegister|U6|Q~q\,
	combout => \SReceiver|ShRegister|U7|Q~feeder_combout\);

-- Location: FF_X47_Y53_N25
\SReceiver|ShRegister|U7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \SReceiver|ShRegister|U7|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U7|Q~q\);

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

ww_WrD <= \WrD~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Dout(6) <= \Dout[6]~output_o\;
END structure;


