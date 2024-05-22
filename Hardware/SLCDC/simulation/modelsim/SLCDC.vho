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

-- DATE "04/10/2024 11:50:11"

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

ENTITY 	SLCDC IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	LCDsel : IN std_logic;
	Sclk : IN std_logic;
	SDX : IN std_logic;
	Wrl : BUFFER std_logic;
	Dout : BUFFER std_logic_vector(8 DOWNTO 0)
	);
END SLCDC;

-- Design Ports Information
-- Wrl	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCDsel	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDX	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sclk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SLCDC IS
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
SIGNAL ww_LCDsel : std_logic;
SIGNAL ww_Sclk : std_logic;
SIGNAL ww_SDX : std_logic;
SIGNAL ww_Wrl : std_logic;
SIGNAL ww_Dout : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dispatcher|CurrentState.STATE_01~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Wrl~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Dout[6]~output_o\ : std_logic;
SIGNAL \Dout[7]~output_o\ : std_logic;
SIGNAL \Dout[8]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Sclk~input_o\ : std_logic;
SIGNAL \Sclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \SDX~input_o\ : std_logic;
SIGNAL \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \LCDsel~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Dispatcher|CurrentState.STATE_10~q\ : std_logic;
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
SIGNAL \Dispatcher|Selector0~0_combout\ : std_logic;
SIGNAL \Dispatcher|CurrentState.STATE_00~q\ : std_logic;
SIGNAL \Dispatcher|NextState.STATE_01~0_combout\ : std_logic;
SIGNAL \Dispatcher|CurrentState.STATE_01~q\ : std_logic;
SIGNAL \SReceiver|SC|WideOr0~0_combout\ : std_logic;
SIGNAL \SReceiver|ShRegister|U1|Q~q\ : std_logic;
SIGNAL \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\ : std_logic;
SIGNAL \SReceiver|ShRegister|U2|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U3|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U4|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U5|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U6|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U7|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U8|Q~q\ : std_logic;
SIGNAL \SReceiver|ShRegister|U9|Q~q\ : std_logic;
SIGNAL \Dispatcher|Dout\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_LCDsel <= LCDsel;
ww_Sclk <= Sclk;
ww_SDX <= SDX;
Wrl <= ww_Wrl;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\Dispatcher|CurrentState.STATE_01~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Dispatcher|CurrentState.STATE_01~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\Sclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Sclk~input_o\);
\SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\ <= NOT \SReceiver|SC|CurrentState.STATE_001~q\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X51_Y54_N9
\Wrl~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|CurrentState.STATE_01~q\,
	devoe => ww_devoe,
	o => \Wrl~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Dout[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(0),
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\Dout[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(1),
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\Dout[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(2),
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\Dout[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(3),
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\Dout[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(4),
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\Dout[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(5),
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\Dout[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(6),
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\Dout[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(7),
	devoe => ww_devoe,
	o => \Dout[7]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Dout[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dispatcher|Dout\(8),
	devoe => ww_devoe,
	o => \Dout[8]~output_o\);

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
\Sclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sclk,
	o => \Sclk~input_o\);

-- Location: CLKCTRL_G3
\Sclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Sclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Sclk~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y54_N8
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

-- Location: LCCOMB_X56_Y53_N28
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

-- Location: IOIBUF_X56_Y54_N1
\LCDsel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LCDsel,
	o => \LCDsel~input_o\);

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

-- Location: FF_X55_Y53_N7
\Dispatcher|CurrentState.STATE_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Dispatcher|CurrentState.STATE_01~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dispatcher|CurrentState.STATE_10~q\);

-- Location: LCCOMB_X56_Y53_N26
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

-- Location: FF_X56_Y53_N27
\SReceiver|Counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	d => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X56_Y53_N4
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

-- Location: FF_X56_Y53_N5
\SReceiver|Counter|U1|CC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	d => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X56_Y53_N22
\SReceiver|Counter|U1|CC_Reg|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\ = \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ $ (((\SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\ & \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	datab => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	combout => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\);

-- Location: FF_X56_Y53_N23
\SReceiver|Counter|U1|CC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	d => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X56_Y53_N10
\SReceiver|Counter|U1|CC_Reg|FFD4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\ = \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ $ (((\SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ & (\SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	datab => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\);

-- Location: FF_X56_Y53_N11
\SReceiver|Counter|U1|CC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	d => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X56_Y53_N8
\SReceiver|SC|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector2~1_combout\ = (\SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\ & \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	datad => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	combout => \SReceiver|SC|Selector2~1_combout\);

-- Location: LCCOMB_X56_Y53_N30
\SReceiver|SC|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector1~0_combout\ = (!\LCDsel~input_o\ & ((\SReceiver|SC|CurrentState.STATE_001~q\) # ((\SReceiver|SC|CurrentState.STATE_010~q\ & !\SReceiver|SC|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCDsel~input_o\,
	datab => \SReceiver|SC|CurrentState.STATE_001~q\,
	datac => \SReceiver|SC|CurrentState.STATE_010~q\,
	datad => \SReceiver|SC|Selector2~1_combout\,
	combout => \SReceiver|SC|Selector1~0_combout\);

-- Location: FF_X56_Y53_N31
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

-- Location: LCCOMB_X55_Y53_N20
\SReceiver|SC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector2~0_combout\ = (\SReceiver|SC|CurrentState.STATE_011~q\ & (!\LCDsel~input_o\ & ((!\SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\) # (!\SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|SC|CurrentState.STATE_011~q\,
	datab => \LCDsel~input_o\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	combout => \SReceiver|SC|Selector2~0_combout\);

-- Location: LCCOMB_X55_Y53_N12
\SReceiver|SC|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector2~2_combout\ = (\SReceiver|SC|Selector2~0_combout\) # ((\SReceiver|SC|CurrentState.STATE_010~q\ & (!\LCDsel~input_o\ & \SReceiver|SC|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|SC|CurrentState.STATE_010~q\,
	datab => \LCDsel~input_o\,
	datac => \SReceiver|SC|Selector2~1_combout\,
	datad => \SReceiver|SC|Selector2~0_combout\,
	combout => \SReceiver|SC|Selector2~2_combout\);

-- Location: FF_X55_Y53_N13
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

-- Location: LCCOMB_X55_Y53_N0
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

-- Location: LCCOMB_X55_Y53_N10
\SReceiver|SC|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector0~1_combout\ = (\SReceiver|SC|CurrentState.STATE_100~q\ & (((!\Dispatcher|CurrentState.STATE_10~q\)))) # (!\SReceiver|SC|CurrentState.STATE_100~q\ & (!\LCDsel~input_o\ & ((!\SReceiver|SC|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|SC|CurrentState.STATE_100~q\,
	datab => \LCDsel~input_o\,
	datac => \Dispatcher|CurrentState.STATE_10~q\,
	datad => \SReceiver|SC|Selector0~0_combout\,
	combout => \SReceiver|SC|Selector0~1_combout\);

-- Location: FF_X55_Y53_N11
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

-- Location: LCCOMB_X56_Y53_N24
\SReceiver|SC|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|NextState.STATE_001~0_combout\ = (!\LCDsel~input_o\ & !\SReceiver|SC|CurrentState.STATE_000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCDsel~input_o\,
	datad => \SReceiver|SC|CurrentState.STATE_000~q\,
	combout => \SReceiver|SC|NextState.STATE_001~0_combout\);

-- Location: FF_X56_Y53_N25
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

-- Location: FF_X56_Y53_N29
\SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	d => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \SReceiver|SC|ALT_INV_CurrentState.STATE_001~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X55_Y53_N18
\SReceiver|SC|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector3~0_combout\ = (\SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & (!\LCDsel~input_o\ & (\SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ & \SReceiver|SC|CurrentState.STATE_011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datab => \LCDsel~input_o\,
	datac => \SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \SReceiver|SC|CurrentState.STATE_011~q\,
	combout => \SReceiver|SC|Selector3~0_combout\);

-- Location: LCCOMB_X55_Y53_N24
\SReceiver|SC|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|Selector3~1_combout\ = (\SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & (!\Dispatcher|CurrentState.STATE_10~q\ & (\SReceiver|SC|CurrentState.STATE_100~q\))) # (!\SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & 
-- ((\SReceiver|SC|Selector3~0_combout\) # ((!\Dispatcher|CurrentState.STATE_10~q\ & \SReceiver|SC|CurrentState.STATE_100~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datab => \Dispatcher|CurrentState.STATE_10~q\,
	datac => \SReceiver|SC|CurrentState.STATE_100~q\,
	datad => \SReceiver|SC|Selector3~0_combout\,
	combout => \SReceiver|SC|Selector3~1_combout\);

-- Location: FF_X55_Y53_N25
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

-- Location: LCCOMB_X54_Y53_N4
\Dispatcher|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Selector0~0_combout\ = (!\Dispatcher|CurrentState.STATE_10~q\ & ((\SReceiver|SC|CurrentState.STATE_100~q\) # (\Dispatcher|CurrentState.STATE_00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SReceiver|SC|CurrentState.STATE_100~q\,
	datac => \Dispatcher|CurrentState.STATE_00~q\,
	datad => \Dispatcher|CurrentState.STATE_10~q\,
	combout => \Dispatcher|Selector0~0_combout\);

-- Location: FF_X54_Y53_N5
\Dispatcher|CurrentState.STATE_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Dispatcher|Selector0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dispatcher|CurrentState.STATE_00~q\);

-- Location: LCCOMB_X54_Y53_N14
\Dispatcher|NextState.STATE_01~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|NextState.STATE_01~0_combout\ = (!\Dispatcher|CurrentState.STATE_00~q\ & \SReceiver|SC|CurrentState.STATE_100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dispatcher|CurrentState.STATE_00~q\,
	datad => \SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \Dispatcher|NextState.STATE_01~0_combout\);

-- Location: FF_X54_Y53_N15
\Dispatcher|CurrentState.STATE_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Dispatcher|NextState.STATE_01~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dispatcher|CurrentState.STATE_01~q\);

-- Location: LCCOMB_X55_Y53_N6
\SReceiver|SC|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SReceiver|SC|WideOr0~0_combout\ = (\SReceiver|SC|CurrentState.STATE_100~q\) # (\SReceiver|SC|CurrentState.STATE_011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SReceiver|SC|CurrentState.STATE_100~q\,
	datad => \SReceiver|SC|CurrentState.STATE_011~q\,
	combout => \SReceiver|SC|WideOr0~0_combout\);

-- Location: FF_X55_Y53_N31
\SReceiver|ShRegister|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SDX~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U1|Q~q\);

-- Location: CLKCTRL_G11
\Dispatcher|CurrentState.STATE_01~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Dispatcher|CurrentState.STATE_01~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y53_N30
\Dispatcher|Dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(0) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U1|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dispatcher|Dout\(0),
	datac => \SReceiver|ShRegister|U1|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(0));

-- Location: FF_X55_Y53_N15
\SReceiver|ShRegister|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SReceiver|ShRegister|U1|Q~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U2|Q~q\);

-- Location: LCCOMB_X55_Y53_N14
\Dispatcher|Dout[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(1) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U2|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dispatcher|Dout\(1),
	datac => \SReceiver|ShRegister|U2|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(1));

-- Location: FF_X55_Y53_N23
\SReceiver|ShRegister|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SReceiver|ShRegister|U2|Q~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U3|Q~q\);

-- Location: LCCOMB_X55_Y53_N22
\Dispatcher|Dout[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(2) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U3|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dispatcher|Dout\(2),
	datac => \SReceiver|ShRegister|U3|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(2));

-- Location: FF_X55_Y53_N9
\SReceiver|ShRegister|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SReceiver|ShRegister|U3|Q~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U4|Q~q\);

-- Location: LCCOMB_X55_Y53_N8
\Dispatcher|Dout[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(3) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U4|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dispatcher|Dout\(3),
	datac => \SReceiver|ShRegister|U4|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(3));

-- Location: FF_X55_Y53_N27
\SReceiver|ShRegister|U5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SReceiver|ShRegister|U4|Q~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U5|Q~q\);

-- Location: LCCOMB_X55_Y53_N26
\Dispatcher|Dout[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(4) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U5|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dispatcher|Dout\(4),
	datac => \SReceiver|ShRegister|U5|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(4));

-- Location: FF_X55_Y53_N5
\SReceiver|ShRegister|U6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SReceiver|ShRegister|U5|Q~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U6|Q~q\);

-- Location: LCCOMB_X55_Y53_N4
\Dispatcher|Dout[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(5) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U6|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dispatcher|Dout\(5),
	datac => \SReceiver|ShRegister|U6|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(5));

-- Location: FF_X55_Y53_N17
\SReceiver|ShRegister|U7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SReceiver|ShRegister|U6|Q~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U7|Q~q\);

-- Location: LCCOMB_X55_Y53_N16
\Dispatcher|Dout[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(6) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U7|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dispatcher|Dout\(6),
	datac => \SReceiver|ShRegister|U7|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(6));

-- Location: FF_X55_Y53_N29
\SReceiver|ShRegister|U8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SReceiver|ShRegister|U7|Q~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U8|Q~q\);

-- Location: LCCOMB_X55_Y53_N28
\Dispatcher|Dout[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(7) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U8|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dispatcher|Dout\(7),
	datac => \SReceiver|ShRegister|U8|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(7));

-- Location: FF_X55_Y53_N3
\SReceiver|ShRegister|U9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~inputclkctrl_outclk\,
	asdata => \SReceiver|ShRegister|U8|Q~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SReceiver|SC|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SReceiver|ShRegister|U9|Q~q\);

-- Location: LCCOMB_X55_Y53_N2
\Dispatcher|Dout[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dispatcher|Dout\(8) = (GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & ((\SReceiver|ShRegister|U9|Q~q\))) # (!GLOBAL(\Dispatcher|CurrentState.STATE_01~clkctrl_outclk\) & (\Dispatcher|Dout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dispatcher|Dout\(8),
	datac => \SReceiver|ShRegister|U9|Q~q\,
	datad => \Dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	combout => \Dispatcher|Dout\(8));

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

ww_Wrl <= \Wrl~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Dout(6) <= \Dout[6]~output_o\;

ww_Dout(7) <= \Dout[7]~output_o\;

ww_Dout(8) <= \Dout[8]~output_o\;
END structure;


