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

-- DATE "04/24/2024 09:44:31"

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

ENTITY 	SerialReceiver IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	SDX : IN std_logic;
	SCLK : IN std_logic;
	SS : IN std_logic;
	accept : IN std_logic;
	D : OUT std_logic_vector(6 DOWNTO 0);
	DXval : OUT std_logic
	);
END SerialReceiver;

-- Design Ports Information
-- D[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DXval	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SS	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accept	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SerialReceiver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_SCLK : std_logic;
SIGNAL ww_SS : std_logic;
SIGNAL ww_accept : std_logic;
SIGNAL ww_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DXval : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \D[5]~output_o\ : std_logic;
SIGNAL \D[6]~output_o\ : std_logic;
SIGNAL \DXval~output_o\ : std_logic;
SIGNAL \SCLK~input_o\ : std_logic;
SIGNAL \SCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \ShRegister|U1|Q~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \SS~input_o\ : std_logic;
SIGNAL \accept~input_o\ : std_logic;
SIGNAL \Counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \Counter|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \Counter|U1|CC_Reg|FFD2|Q~0_combout\ : std_logic;
SIGNAL \Counter|U1|CC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \Counter|U1|CC_Reg|FFD3|Q~0_combout\ : std_logic;
SIGNAL \Counter|U1|CC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \Counter|U1|CC_Reg|FFD4|Q~0_combout\ : std_logic;
SIGNAL \Counter|U1|CC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \SC|Selector2~1_combout\ : std_logic;
SIGNAL \SC|Selector1~0_combout\ : std_logic;
SIGNAL \SC|CurrentState.STATE_010~q\ : std_logic;
SIGNAL \SC|Selector2~0_combout\ : std_logic;
SIGNAL \SC|Selector2~2_combout\ : std_logic;
SIGNAL \SC|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \SC|Selector0~0_combout\ : std_logic;
SIGNAL \SC|Selector0~1_combout\ : std_logic;
SIGNAL \SC|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \SC|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \SC|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \SC|Selector3~0_combout\ : std_logic;
SIGNAL \SC|Selector3~1_combout\ : std_logic;
SIGNAL \SC|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \SC|WideOr0~0_combout\ : std_logic;
SIGNAL \ShRegister|U1|Q~q\ : std_logic;
SIGNAL \ShRegister|U2|Q~feeder_combout\ : std_logic;
SIGNAL \ShRegister|U2|Q~q\ : std_logic;
SIGNAL \ShRegister|U3|Q~feeder_combout\ : std_logic;
SIGNAL \ShRegister|U3|Q~q\ : std_logic;
SIGNAL \ShRegister|U4|Q~feeder_combout\ : std_logic;
SIGNAL \ShRegister|U4|Q~q\ : std_logic;
SIGNAL \ShRegister|U5|Q~feeder_combout\ : std_logic;
SIGNAL \ShRegister|U5|Q~q\ : std_logic;
SIGNAL \ShRegister|U6|Q~feeder_combout\ : std_logic;
SIGNAL \ShRegister|U6|Q~q\ : std_logic;
SIGNAL \ShRegister|U7|Q~feeder_combout\ : std_logic;
SIGNAL \ShRegister|U7|Q~q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \SC|ALT_INV_CurrentState.STATE_001~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_SDX <= SDX;
ww_SCLK <= SCLK;
ww_SS <= SS;
ww_accept <= accept;
D <= ww_D;
DXval <= ww_DXval;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\SCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCLK~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\SC|ALT_INV_CurrentState.STATE_001~q\ <= NOT \SC|CurrentState.STATE_001~q\;
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

-- Location: IOOBUF_X46_Y54_N9
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShRegister|U1|Q~q\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShRegister|U2|Q~q\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShRegister|U3|Q~q\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShRegister|U4|Q~q\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\D[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShRegister|U5|Q~q\,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\D[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShRegister|U6|Q~q\,
	devoe => ww_devoe,
	o => \D[5]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\D[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShRegister|U7|Q~q\,
	devoe => ww_devoe,
	o => \D[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\DXval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SC|CurrentState.STATE_100~q\,
	devoe => ww_devoe,
	o => \DXval~output_o\);

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

-- Location: IOIBUF_X49_Y54_N1
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

-- Location: LCCOMB_X47_Y53_N12
\ShRegister|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShRegister|U1|Q~feeder_combout\ = \SDX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDX~input_o\,
	combout => \ShRegister|U1|Q~feeder_combout\);

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

-- Location: LCCOMB_X46_Y53_N30
\Pcheck|counter|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ = \Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ $ (\SDX~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datad => \SDX~input_o\,
	combout => \Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: IOIBUF_X46_Y54_N22
\SS~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SS,
	o => \SS~input_o\);

-- Location: IOIBUF_X46_Y54_N29
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
\Counter|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter|U1|CC_Reg|FFD1|Q~0_combout\ = !\Counter|U1|CC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Counter|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: FF_X46_Y53_N19
\Counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X46_Y53_N4
\Counter|U1|CC_Reg|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter|U1|CC_Reg|FFD2|Q~0_combout\ = \Counter|U1|CC_Reg|FFD2|Q~q\ $ (\Counter|U1|CC_Reg|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Counter|U1|CC_Reg|FFD2|Q~0_combout\);

-- Location: FF_X46_Y53_N5
\Counter|U1|CC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Counter|U1|CC_Reg|FFD2|Q~0_combout\,
	clrn => \SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|U1|CC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X46_Y53_N6
\Counter|U1|CC_Reg|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter|U1|CC_Reg|FFD3|Q~0_combout\ = \Counter|U1|CC_Reg|FFD3|Q~q\ $ (((\Counter|U1|CC_Reg|FFD2|Q~q\ & \Counter|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \Counter|U1|CC_Reg|FFD3|Q~q\,
	datad => \Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Counter|U1|CC_Reg|FFD3|Q~0_combout\);

-- Location: FF_X46_Y53_N7
\Counter|U1|CC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Counter|U1|CC_Reg|FFD3|Q~0_combout\,
	clrn => \SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|U1|CC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X46_Y53_N14
\Counter|U1|CC_Reg|FFD4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counter|U1|CC_Reg|FFD4|Q~0_combout\ = \Counter|U1|CC_Reg|FFD4|Q~q\ $ (((\Counter|U1|CC_Reg|FFD3|Q~q\ & (\Counter|U1|CC_Reg|FFD2|Q~q\ & \Counter|U1|CC_Reg|FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counter|U1|CC_Reg|FFD3|Q~q\,
	datab => \Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Counter|U1|CC_Reg|FFD4|Q~0_combout\);

-- Location: FF_X46_Y53_N15
\Counter|U1|CC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Counter|U1|CC_Reg|FFD4|Q~0_combout\,
	clrn => \SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter|U1|CC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X46_Y53_N28
\SC|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|Selector2~1_combout\ = (\Counter|U1|CC_Reg|FFD4|Q~q\ & \Counter|U1|CC_Reg|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \SC|Selector2~1_combout\);

-- Location: LCCOMB_X46_Y53_N22
\SC|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|Selector1~0_combout\ = (!\SS~input_o\ & ((\SC|CurrentState.STATE_001~q\) # ((\SC|CurrentState.STATE_010~q\ & !\SC|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|CurrentState.STATE_001~q\,
	datab => \SS~input_o\,
	datac => \SC|CurrentState.STATE_010~q\,
	datad => \SC|Selector2~1_combout\,
	combout => \SC|Selector1~0_combout\);

-- Location: FF_X46_Y53_N23
\SC|CurrentState.STATE_010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SC|Selector1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|CurrentState.STATE_010~q\);

-- Location: LCCOMB_X46_Y53_N8
\SC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|Selector2~0_combout\ = (!\SS~input_o\ & (\SC|CurrentState.STATE_011~q\ & ((!\Counter|U1|CC_Reg|FFD2|Q~q\) # (!\Counter|U1|CC_Reg|FFD4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datab => \Counter|U1|CC_Reg|FFD4|Q~q\,
	datac => \Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \SC|CurrentState.STATE_011~q\,
	combout => \SC|Selector2~0_combout\);

-- Location: LCCOMB_X46_Y53_N10
\SC|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|Selector2~2_combout\ = (\SC|Selector2~0_combout\) # ((\SC|CurrentState.STATE_010~q\ & (!\SS~input_o\ & \SC|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC|CurrentState.STATE_010~q\,
	datab => \SS~input_o\,
	datac => \SC|Selector2~0_combout\,
	datad => \SC|Selector2~1_combout\,
	combout => \SC|Selector2~2_combout\);

-- Location: FF_X46_Y53_N11
\SC|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SC|Selector2~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X46_Y53_N26
\SC|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|Selector0~0_combout\ = (\Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & (\Counter|U1|CC_Reg|FFD4|Q~q\ & (\Counter|U1|CC_Reg|FFD2|Q~q\ & \SC|CurrentState.STATE_011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datab => \Counter|U1|CC_Reg|FFD4|Q~q\,
	datac => \Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \SC|CurrentState.STATE_011~q\,
	combout => \SC|Selector0~0_combout\);

-- Location: LCCOMB_X46_Y53_N12
\SC|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|Selector0~1_combout\ = (\SC|CurrentState.STATE_100~q\ & (!\accept~input_o\)) # (!\SC|CurrentState.STATE_100~q\ & (((!\SS~input_o\ & !\SC|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \accept~input_o\,
	datab => \SS~input_o\,
	datac => \SC|Selector0~0_combout\,
	datad => \SC|CurrentState.STATE_100~q\,
	combout => \SC|Selector0~1_combout\);

-- Location: FF_X46_Y53_N13
\SC|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SC|Selector0~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X46_Y53_N20
\SC|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|NextState.STATE_001~0_combout\ = (!\SS~input_o\ & !\SC|CurrentState.STATE_000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SS~input_o\,
	datad => \SC|CurrentState.STATE_000~q\,
	combout => \SC|NextState.STATE_001~0_combout\);

-- Location: FF_X46_Y53_N21
\SC|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SC|NextState.STATE_001~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|CurrentState.STATE_001~q\);

-- Location: FF_X46_Y53_N31
\Pcheck|counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Pcheck|counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X46_Y53_N24
\SC|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|Selector3~0_combout\ = (!\SS~input_o\ & (\Counter|U1|CC_Reg|FFD4|Q~q\ & (\Counter|U1|CC_Reg|FFD2|Q~q\ & \SC|CurrentState.STATE_011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SS~input_o\,
	datab => \Counter|U1|CC_Reg|FFD4|Q~q\,
	datac => \Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \SC|CurrentState.STATE_011~q\,
	combout => \SC|Selector3~0_combout\);

-- Location: LCCOMB_X46_Y53_N16
\SC|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|Selector3~1_combout\ = (\Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & (!\accept~input_o\ & (\SC|CurrentState.STATE_100~q\))) # (!\Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & ((\SC|Selector3~0_combout\) # ((!\accept~input_o\ & \SC|CurrentState.STATE_100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datab => \accept~input_o\,
	datac => \SC|CurrentState.STATE_100~q\,
	datad => \SC|Selector3~0_combout\,
	combout => \SC|Selector3~1_combout\);

-- Location: FF_X46_Y53_N17
\SC|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SC|Selector3~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SC|CurrentState.STATE_100~q\);

-- Location: LCCOMB_X47_Y53_N30
\SC|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SC|WideOr0~0_combout\ = (\SC|CurrentState.STATE_100~q\) # (\SC|CurrentState.STATE_011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SC|CurrentState.STATE_100~q\,
	datad => \SC|CurrentState.STATE_011~q\,
	combout => \SC|WideOr0~0_combout\);

-- Location: FF_X47_Y53_N13
\ShRegister|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \ShRegister|U1|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShRegister|U1|Q~q\);

-- Location: LCCOMB_X47_Y53_N10
\ShRegister|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShRegister|U2|Q~feeder_combout\ = \ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShRegister|U1|Q~q\,
	combout => \ShRegister|U2|Q~feeder_combout\);

-- Location: FF_X47_Y53_N11
\ShRegister|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \ShRegister|U2|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShRegister|U2|Q~q\);

-- Location: LCCOMB_X47_Y53_N28
\ShRegister|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShRegister|U3|Q~feeder_combout\ = \ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShRegister|U2|Q~q\,
	combout => \ShRegister|U3|Q~feeder_combout\);

-- Location: FF_X47_Y53_N29
\ShRegister|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \ShRegister|U3|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShRegister|U3|Q~q\);

-- Location: LCCOMB_X47_Y53_N6
\ShRegister|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShRegister|U4|Q~feeder_combout\ = \ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShRegister|U3|Q~q\,
	combout => \ShRegister|U4|Q~feeder_combout\);

-- Location: FF_X47_Y53_N7
\ShRegister|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \ShRegister|U4|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShRegister|U4|Q~q\);

-- Location: LCCOMB_X47_Y53_N20
\ShRegister|U5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShRegister|U5|Q~feeder_combout\ = \ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShRegister|U4|Q~q\,
	combout => \ShRegister|U5|Q~feeder_combout\);

-- Location: FF_X47_Y53_N21
\ShRegister|U5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \ShRegister|U5|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShRegister|U5|Q~q\);

-- Location: LCCOMB_X47_Y53_N18
\ShRegister|U6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShRegister|U6|Q~feeder_combout\ = \ShRegister|U5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShRegister|U5|Q~q\,
	combout => \ShRegister|U6|Q~feeder_combout\);

-- Location: FF_X47_Y53_N19
\ShRegister|U6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \ShRegister|U6|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShRegister|U6|Q~q\);

-- Location: LCCOMB_X47_Y53_N24
\ShRegister|U7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ShRegister|U7|Q~feeder_combout\ = \ShRegister|U6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShRegister|U6|Q~q\,
	combout => \ShRegister|U7|Q~feeder_combout\);

-- Location: FF_X47_Y53_N25
\ShRegister|U7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCLK~inputclkctrl_outclk\,
	d => \ShRegister|U7|Q~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShRegister|U7|Q~q\);

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

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_D(4) <= \D[4]~output_o\;

ww_D(5) <= \D[5]~output_o\;

ww_D(6) <= \D[6]~output_o\;

ww_DXval <= \DXval~output_o\;
END structure;


