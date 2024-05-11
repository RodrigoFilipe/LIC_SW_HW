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

-- DATE "05/08/2024 12:26:03"

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

ENTITY 	MAC IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	putGet : IN std_logic;
	incPut : IN std_logic;
	incGet : IN std_logic;
	full : OUT std_logic;
	empty : OUT std_logic;
	Address : OUT std_logic_vector(2 DOWNTO 0)
	);
END MAC;

-- Design Ports Information
-- full	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[1]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- putGet	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incPut	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incGet	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MAC IS
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
SIGNAL ww_putGet : std_logic;
SIGNAL ww_incPut : std_logic;
SIGNAL ww_incGet : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL ww_empty : std_logic;
SIGNAL ww_Address : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \full~output_o\ : std_logic;
SIGNAL \empty~output_o\ : std_logic;
SIGNAL \Address[0]~output_o\ : std_logic;
SIGNAL \Address[1]~output_o\ : std_logic;
SIGNAL \Address[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \incPut~input_o\ : std_logic;
SIGNAL \incGet~input_o\ : std_logic;
SIGNAL \UpDownCount|EC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \UpDownCount|EC_AS|AS_Adder|FA1|Co~0_combout\ : std_logic;
SIGNAL \UpDownCount|EC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S~combout\ : std_logic;
SIGNAL \UpDownCount|EC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\ : std_logic;
SIGNAL \UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S~combout\ : std_logic;
SIGNAL \UpDownCount|EC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S~combout\ : std_logic;
SIGNAL \UpDownCount|EC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \empty~0_combout\ : std_logic;
SIGNAL \putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \putCount|C_CC|CC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \getCount|C_CC|CC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \putGet~input_o\ : std_logic;
SIGNAL \mux|R[0]~0_combout\ : std_logic;
SIGNAL \putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ : std_logic;
SIGNAL \putCount|C_CC|CC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ : std_logic;
SIGNAL \getCount|C_CC|CC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \mux|R[1]~1_combout\ : std_logic;
SIGNAL \putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ : std_logic;
SIGNAL \putCount|C_CC|CC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ : std_logic;
SIGNAL \getCount|C_CC|CC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \mux|R[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_empty~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_putGet <= putGet;
ww_incPut <= incPut;
ww_incGet <= incGet;
full <= ww_full;
empty <= ww_empty;
Address <= ww_Address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_empty~0_combout\ <= NOT \empty~0_combout\;
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
\full~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UpDownCount|EC_Reg|FFD4|Q~q\,
	devoe => ww_devoe,
	o => \full~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\empty~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_empty~0_combout\,
	devoe => ww_devoe,
	o => \empty~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\Address[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|R[0]~0_combout\,
	devoe => ww_devoe,
	o => \Address[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\Address[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|R[1]~1_combout\,
	devoe => ww_devoe,
	o => \Address[1]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\Address[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|R[2]~2_combout\,
	devoe => ww_devoe,
	o => \Address[2]~output_o\);

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

-- Location: IOIBUF_X0_Y36_N15
\incPut~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incPut,
	o => \incPut~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\incGet~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incGet,
	o => \incGet~input_o\);

-- Location: LCCOMB_X1_Y36_N18
\UpDownCount|EC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UpDownCount|EC_Reg|FFD1|Q~0_combout\ = !\UpDownCount|EC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UpDownCount|EC_Reg|FFD1|Q~q\,
	combout => \UpDownCount|EC_Reg|FFD1|Q~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X1_Y36_N22
\UpDownCount|EC_AS|AS_Adder|FA1|Co~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UpDownCount|EC_AS|AS_Adder|FA1|Co~0_combout\ = (\incPut~input_o\) # (\incGet~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPut~input_o\,
	datad => \incGet~input_o\,
	combout => \UpDownCount|EC_AS|AS_Adder|FA1|Co~0_combout\);

-- Location: FF_X1_Y36_N19
\UpDownCount|EC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UpDownCount|EC_Reg|FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \UpDownCount|EC_AS|AS_Adder|FA1|Co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UpDownCount|EC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X1_Y36_N4
\UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S~combout\ = \UpDownCount|EC_Reg|FFD2|Q~q\ $ (((\incPut~input_o\ & ((\UpDownCount|EC_Reg|FFD1|Q~q\))) # (!\incPut~input_o\ & (\incGet~input_o\ & !\UpDownCount|EC_Reg|FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPut~input_o\,
	datab => \incGet~input_o\,
	datac => \UpDownCount|EC_Reg|FFD2|Q~q\,
	datad => \UpDownCount|EC_Reg|FFD1|Q~q\,
	combout => \UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S~combout\);

-- Location: FF_X1_Y36_N5
\UpDownCount|EC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UpDownCount|EC_AS|AS_Adder|FA2|FA_HA1|S~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \UpDownCount|EC_AS|AS_Adder|FA1|Co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UpDownCount|EC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X1_Y36_N0
\UpDownCount|EC_AS|AS_Adder|FA2|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\ = (\incPut~input_o\ & (((\UpDownCount|EC_Reg|FFD2|Q~q\ & \UpDownCount|EC_Reg|FFD1|Q~q\)))) # (!\incPut~input_o\ & (((\UpDownCount|EC_Reg|FFD2|Q~q\) # (\UpDownCount|EC_Reg|FFD1|Q~q\)) # (!\incGet~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPut~input_o\,
	datab => \incGet~input_o\,
	datac => \UpDownCount|EC_Reg|FFD2|Q~q\,
	datad => \UpDownCount|EC_Reg|FFD1|Q~q\,
	combout => \UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\);

-- Location: LCCOMB_X1_Y36_N14
\UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S~combout\ = \incPut~input_o\ $ (\UpDownCount|EC_Reg|FFD3|Q~q\ $ (!\UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPut~input_o\,
	datac => \UpDownCount|EC_Reg|FFD3|Q~q\,
	datad => \UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\,
	combout => \UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S~combout\);

-- Location: FF_X1_Y36_N15
\UpDownCount|EC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UpDownCount|EC_AS|AS_Adder|FA3|FA_HA1|S~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \UpDownCount|EC_AS|AS_Adder|FA1|Co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UpDownCount|EC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X1_Y36_N16
\UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S~combout\ = \UpDownCount|EC_Reg|FFD4|Q~q\ $ (((\incPut~input_o\ & (\UpDownCount|EC_Reg|FFD3|Q~q\ & \UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\)) # (!\incPut~input_o\ & (!\UpDownCount|EC_Reg|FFD3|Q~q\ & 
-- !\UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPut~input_o\,
	datab => \UpDownCount|EC_Reg|FFD3|Q~q\,
	datac => \UpDownCount|EC_Reg|FFD4|Q~q\,
	datad => \UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\,
	combout => \UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S~combout\);

-- Location: FF_X1_Y36_N17
\UpDownCount|EC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \UpDownCount|EC_AS|AS_Adder|FA4|FA_HA1|S~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \UpDownCount|EC_AS|AS_Adder|FA1|Co~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UpDownCount|EC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X1_Y36_N28
\empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \empty~0_combout\ = (\UpDownCount|EC_Reg|FFD2|Q~q\) # ((\UpDownCount|EC_Reg|FFD4|Q~q\) # ((\UpDownCount|EC_Reg|FFD3|Q~q\) # (\UpDownCount|EC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UpDownCount|EC_Reg|FFD2|Q~q\,
	datab => \UpDownCount|EC_Reg|FFD4|Q~q\,
	datac => \UpDownCount|EC_Reg|FFD3|Q~q\,
	datad => \UpDownCount|EC_Reg|FFD1|Q~q\,
	combout => \empty~0_combout\);

-- Location: LCCOMB_X1_Y36_N20
\putCount|C_CC|CC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ = \putCount|C_CC|CC_Reg|R_FFD0|Q~q\ $ (\incPut~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \incPut~input_o\,
	combout => \putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\);

-- Location: FF_X1_Y36_N21
\putCount|C_CC|CC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \putCount|C_CC|CC_Reg|R_FFD0|Q~q\);

-- Location: LCCOMB_X1_Y36_N6
\getCount|C_CC|CC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ = \getCount|C_CC|CC_Reg|R_FFD0|Q~q\ $ (\incGet~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \incGet~input_o\,
	combout => \getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\);

-- Location: FF_X1_Y36_N7
\getCount|C_CC|CC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \getCount|C_CC|CC_Reg|R_FFD0|Q~q\);

-- Location: IOIBUF_X0_Y36_N1
\putGet~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_putGet,
	o => \putGet~input_o\);

-- Location: LCCOMB_X1_Y36_N30
\mux|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux|R[0]~0_combout\ = (\putGet~input_o\ & ((\getCount|C_CC|CC_Reg|R_FFD0|Q~q\))) # (!\putGet~input_o\ & (\putCount|C_CC|CC_Reg|R_FFD0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datac => \getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \putGet~input_o\,
	combout => \mux|R[0]~0_combout\);

-- Location: LCCOMB_X1_Y36_N2
\putCount|C_CC|CC_Reg|R_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ = \putCount|C_CC|CC_Reg|R_FFD1|Q~q\ $ (((\incPut~input_o\ & \putCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPut~input_o\,
	datac => \putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\);

-- Location: FF_X1_Y36_N3
\putCount|C_CC|CC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \putCount|C_CC|CC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X1_Y36_N12
\getCount|C_CC|CC_Reg|R_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ = \getCount|C_CC|CC_Reg|R_FFD1|Q~q\ $ (((\incGet~input_o\ & \getCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \incGet~input_o\,
	datac => \getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\);

-- Location: FF_X1_Y36_N13
\getCount|C_CC|CC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \getCount|C_CC|CC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X1_Y36_N8
\mux|R[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux|R[1]~1_combout\ = (\putGet~input_o\ & ((\getCount|C_CC|CC_Reg|R_FFD1|Q~q\))) # (!\putGet~input_o\ & (\putCount|C_CC|CC_Reg|R_FFD1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \putGet~input_o\,
	combout => \mux|R[1]~1_combout\);

-- Location: LCCOMB_X1_Y36_N24
\putCount|C_CC|CC_Reg|R_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ = \putCount|C_CC|CC_Reg|R_FFD2|Q~q\ $ (((\incPut~input_o\ & (\putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & \putCount|C_CC|CC_Reg|R_FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \incPut~input_o\,
	datab => \putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datac => \putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\);

-- Location: FF_X1_Y36_N25
\putCount|C_CC|CC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \putCount|C_CC|CC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X1_Y36_N10
\getCount|C_CC|CC_Reg|R_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ = \getCount|C_CC|CC_Reg|R_FFD2|Q~q\ $ (((\getCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (\incGet~input_o\ & \getCount|C_CC|CC_Reg|R_FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \incGet~input_o\,
	datac => \getCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\);

-- Location: FF_X1_Y36_N11
\getCount|C_CC|CC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \getCount|C_CC|CC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X1_Y36_N26
\mux|R[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux|R[2]~2_combout\ = (\putGet~input_o\ & ((\getCount|C_CC|CC_Reg|R_FFD2|Q~q\))) # (!\putGet~input_o\ & (\putCount|C_CC|CC_Reg|R_FFD2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \getCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \putGet~input_o\,
	combout => \mux|R[2]~2_combout\);

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

ww_full <= \full~output_o\;

ww_empty <= \empty~output_o\;

ww_Address(0) <= \Address[0]~output_o\;

ww_Address(1) <= \Address[1]~output_o\;

ww_Address(2) <= \Address[2]~output_o\;
END structure;


