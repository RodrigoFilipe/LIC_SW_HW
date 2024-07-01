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

-- DATE "07/01/2024 10:33:16"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SpaceInvaders IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	rst : IN std_logic;
	clk : IN std_logic;
	ack : IN std_logic;
	coin : IN std_logic;
	manut : IN std_logic;
	I : IN std_logic_vector(3 DOWNTO 0);
	Wrl : BUFFER std_logic;
	O : BUFFER std_logic_vector(3 DOWNTO 0);
	DoutLCD : BUFFER std_logic_vector(8 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(7 DOWNTO 0);
	accept : BUFFER std_logic
	);
END SpaceInvaders;

-- Design Ports Information
-- ack	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wrl	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[5]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[7]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DoutLCD[8]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accept	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- manut	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SpaceInvaders IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ack : std_logic;
SIGNAL ww_coin : std_logic;
SIGNAL ww_manut : std_logic;
SIGNAL ww_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Wrl : std_logic;
SIGNAL ww_O : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DoutLCD : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_accept : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kreader|kdecode|cDIV|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Score|dispatcher|CurrentState.STATE_01~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LCD|SReceiver|SC|CurrentState.STATE_001~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Score|SReceiver|SC|CurrentState.STATE_001~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \ack~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \LCD|Dispatcher|CurrentState.STATE_10~q\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count[0]~7_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~1\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~2_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~3\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~4_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~5\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~6_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~7\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~8_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~3_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~2_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~1_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~4_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~9\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~10_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~11\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~12_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~13\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~14_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count~1_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~15\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~16_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~17\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~18_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~19\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~20_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~21\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~22_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~23\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~24_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count~2_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~25\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~26_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~27\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~28_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count~3_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~29\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~30_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count~4_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~31\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~32_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count~5_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~33\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~34_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count~6_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~35\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~36_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~37\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~38_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~39\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~40_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~41\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~42_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~43\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~44_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~45\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~46_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~47\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~48_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~49\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~50_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~51\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~52_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~53\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~54_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~7_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~5_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~55\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~56_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~57\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~58_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~59\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~60_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~61\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Add0~62_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~8_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~6_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|Equal0~9_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|tmp~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|tmp~q\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|Selector4~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|Selector1~0_combout\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \kreader|kdecode|kscan|mux|Y~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kctrl|Selector2~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kctrl|CurrentState.STATE_10~q\ : std_logic;
SIGNAL \kreader|kdecode|kctrl|Selector0~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kctrl|Selector0~1_combout\ : std_logic;
SIGNAL \kreader|kdecode|kctrl|CurrentState.STATE_00~q\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \kreader|kdecode|kscan|mux|Y~1_combout\ : std_logic;
SIGNAL \kreader|kdecode|kctrl|Selector1~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kctrl|Selector1~1_combout\ : std_logic;
SIGNAL \kreader|kdecode|kctrl|CurrentState.STATE_01~q\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|Selector1~1_combout\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|Selector8~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|HA2|S~combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co~combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA2|HA2|S~combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA3|HA2|S~combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\ : std_logic;
SIGNAL \manut~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|wr~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~21_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~25_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~17_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~37_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~29_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~38_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~9_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~13_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~5_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~1_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~39_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~40_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~41_combout\ : std_logic;
SIGNAL \kreader|OutputBuff|Reg|FFD2|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Adder|FA3|HA2|Co~combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~15_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~11_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~3_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~7_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~49_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~50_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~19_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~27_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~47_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~23_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~31_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~48_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~51_combout\ : std_logic;
SIGNAL \kreader|OutputBuff|Reg|FFD4|Q~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \coin~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~2_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~6_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~44_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~14_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~10_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~45_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~30_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~18_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~26_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~42_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~22_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~43_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~46_combout\ : std_logic;
SIGNAL \kreader|OutputBuff|Reg|FFD3|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \kreader|OutputBuff|OutputBufferCtrl|Selector1~0_combout\ : std_logic;
SIGNAL \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\ : std_logic;
SIGNAL \kreader|OutputBuff|OutputBufferCtrl|Selector0~0_combout\ : std_logic;
SIGNAL \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ : std_logic;
SIGNAL \kreader|RingBuff|MemoryAddressCtrl|empty~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|Selector8~1_combout\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|comb~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \kreader|OutputBuff|OutputBufferCtrl|NextState.STATE_01~0_combout\ : std_logic;
SIGNAL \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\ : std_logic;
SIGNAL \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~8_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~12_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~4_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~0_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~34_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~35_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~20_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~24_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~16_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~32_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~28_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~33_combout\ : std_logic;
SIGNAL \kreader|RingBuff|R|ram~36_combout\ : std_logic;
SIGNAL \kreader|OutputBuff|Reg|FFD1|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\ : std_logic;
SIGNAL \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector0~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|Sdflag~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector2~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|Sdflag~1_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector1~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|CurrentState.STATE_010~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|CurrentState.STATE_010~q\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector2~1_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector3~3_combout\ : std_logic;
SIGNAL \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector0~1_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \LCD|SReceiver|SC|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \LCD|SReceiver|SC|CurrentState.STATE_001~clkctrl_outclk\ : std_logic;
SIGNAL \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector3~0_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector3~1_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|Selector3~2_combout\ : std_logic;
SIGNAL \LCD|SReceiver|SC|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \LCD|Dispatcher|Selector0~0_combout\ : std_logic;
SIGNAL \LCD|Dispatcher|CurrentState.STATE_00~q\ : std_logic;
SIGNAL \LCD|Dispatcher|NextState.STATE_01~0_combout\ : std_logic;
SIGNAL \LCD|Dispatcher|CurrentState.STATE_01~q\ : std_logic;
SIGNAL \kreader|kdecode|kscan|dec|O~0_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|dec|O~1_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|dec|O~2_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|dec|O~3_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U1|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U1|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U2|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U2|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U3|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U3|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U4|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U4|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U5|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U5|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U6|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U6|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U7|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U7|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U8|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U8|Q~q\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U9|Q~feeder_combout\ : std_logic;
SIGNAL \LCD|SReceiver|ShRegister|U9|Q~q\ : std_logic;
SIGNAL \Score|dispatcher|CurrentState.STATE_10~feeder_combout\ : std_logic;
SIGNAL \Score|dispatcher|CurrentState.STATE_10~q\ : std_logic;
SIGNAL \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|Spflag~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|Sdflag~combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|Selector1~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|CurrentState.STATE_010~feeder_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|CurrentState.STATE_010~q\ : std_logic;
SIGNAL \Score|SReceiver|SC|Selector2~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|Selector2~1_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \Score|SReceiver|SC|Selector0~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|Selector0~1_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \Score|SReceiver|SC|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \Score|SReceiver|SC|CurrentState.STATE_001~clkctrl_outclk\ : std_logic;
SIGNAL \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|SC|Selector3~0_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|Selector3~1_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|Selector3~2_combout\ : std_logic;
SIGNAL \Score|SReceiver|SC|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \Score|dispatcher|Selector0~0_combout\ : std_logic;
SIGNAL \Score|dispatcher|CurrentState.STATE_00~q\ : std_logic;
SIGNAL \Score|dispatcher|NextState.STATE_01~0_combout\ : std_logic;
SIGNAL \Score|dispatcher|CurrentState.STATE_01~q\ : std_logic;
SIGNAL \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U1|Q~feeder_combout\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U1|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U2|Q~feeder_combout\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U2|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U3|Q~feeder_combout\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U3|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U4|Q~feeder_combout\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U4|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U5|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U6|Q~q\ : std_logic;
SIGNAL \Score|SReceiver|ShRegister|U7|Q~q\ : std_logic;
SIGNAL \SDisplay|clear_reg|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|clear_reg|Q~1_combout\ : std_logic;
SIGNAL \SDisplay|clear_reg|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:in_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|decoder|dout[6]~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:out_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:in_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:out_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:in_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:out_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:in_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:out_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|decoder|dout[1]~1_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:in_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:out_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:in_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:out_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:in_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:out_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:in_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:out_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|decoder|dout[2]~2_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:in_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:out_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:in_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:out_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:in_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:out_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:in_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:out_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|decoder|dout[3]~3_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:in_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:out_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:in_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:out_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:in_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:out_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:in_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:out_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|decoder|dout[4]~4_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:in_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:out_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:in_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:out_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:in_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:out_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:in_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:out_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:in_reg|u1|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|decoder|dout[5]~5_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:in_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:out_reg|u1|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:in_reg|u3|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:in_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:out_reg|u3|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:in_reg|u2|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:in_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:out_reg|u2|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:in_reg|u0|Q~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:in_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:out_reg|u0|Q~q\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \SDisplay|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SDisplay|decoder|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kreader|kdecode|kscan|dec|ALT_INV_O~3_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|dec|ALT_INV_O~2_combout\ : std_logic;
SIGNAL \kreader|kdecode|kscan|dec|ALT_INV_O~1_combout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \Score|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \LCD|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\ : std_logic;
SIGNAL \kreader|kdecode|cDIV|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_rst <= rst;
ww_clk <= clk;
ww_ack <= ack;
ww_coin <= coin;
ww_manut <= manut;
ww_I <= I;
Wrl <= ww_Wrl;
O <= ww_O;
DoutLCD <= ww_DoutLCD;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
accept <= ww_accept;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\kreader|kdecode|cDIV|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kreader|kdecode|cDIV|tmp~q\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

\Score|dispatcher|CurrentState.STATE_01~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Score|dispatcher|CurrentState.STATE_01~q\);

\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\);

\LCD|SReceiver|SC|CurrentState.STATE_001~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LCD|SReceiver|SC|CurrentState.STATE_001~q\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\Score|SReceiver|SC|CurrentState.STATE_001~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Score|SReceiver|SC|CurrentState.STATE_001~q\);
\kreader|kdecode|kscan|dec|ALT_INV_O~3_combout\ <= NOT \kreader|kdecode|kscan|dec|O~3_combout\;
\kreader|kdecode|kscan|dec|ALT_INV_O~2_combout\ <= NOT \kreader|kdecode|kscan|dec|O~2_combout\;
\kreader|kdecode|kscan|dec|ALT_INV_O~1_combout\ <= NOT \kreader|kdecode|kscan|dec|O~1_combout\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\Score|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\ <= NOT \Score|SReceiver|SC|CurrentState.STATE_001~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\LCD|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\ <= NOT \LCD|SReceiver|SC|CurrentState.STATE_001~clkctrl_outclk\;
\kreader|kdecode|cDIV|ALT_INV_tmp~clkctrl_outclk\ <= NOT \kreader|kdecode|cDIV|tmp~clkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: FF_X45_Y40_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X45_Y40_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X44_Y40_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X45_Y40_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X44_Y40_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X45_Y40_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y52_N8
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

-- Location: LCCOMB_X45_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X45_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: IOOBUF_X14_Y0_N9
\Wrl~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|Dispatcher|CurrentState.STATE_01~q\,
	devoe => ww_devoe,
	o => ww_Wrl);

-- Location: IOOBUF_X38_Y0_N9
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kreader|kdecode|kscan|dec|O~0_combout\,
	devoe => ww_devoe,
	o => ww_O(0));

-- Location: IOOBUF_X38_Y0_N16
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kreader|kdecode|kscan|dec|ALT_INV_O~1_combout\,
	devoe => ww_devoe,
	o => ww_O(1));

-- Location: IOOBUF_X34_Y0_N23
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kreader|kdecode|kscan|dec|ALT_INV_O~2_combout\,
	devoe => ww_devoe,
	o => ww_O(2));

-- Location: IOOBUF_X31_Y0_N16
\O[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kreader|kdecode|kscan|dec|ALT_INV_O~3_combout\,
	devoe => ww_devoe,
	o => ww_O(3));

-- Location: IOOBUF_X24_Y0_N2
\DoutLCD[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U9|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(0));

-- Location: IOOBUF_X54_Y0_N30
\DoutLCD[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U8|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(1));

-- Location: IOOBUF_X46_Y0_N2
\DoutLCD[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U7|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(2));

-- Location: IOOBUF_X40_Y0_N16
\DoutLCD[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U6|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(3));

-- Location: IOOBUF_X36_Y0_N2
\DoutLCD[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U5|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(4));

-- Location: IOOBUF_X36_Y0_N9
\DoutLCD[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U4|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(5));

-- Location: IOOBUF_X34_Y0_N2
\DoutLCD[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U3|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(6));

-- Location: IOOBUF_X20_Y0_N2
\DoutLCD[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U2|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(7));

-- Location: IOOBUF_X20_Y0_N9
\DoutLCD[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCD|SReceiver|ShRegister|U1|Q~q\,
	devoe => ww_devoe,
	o => ww_DoutLCD(8));

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:0:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:0:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:0:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:0:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:0:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:0:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:0:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:1:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:1:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:1:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:1:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:1:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:1:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:1:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:2:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:2:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:2:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:2:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:2:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:2:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:2:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:3:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:3:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:3:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:3:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:3:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:3:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:3:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:4:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:4:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:4:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:4:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:4:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:4:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:4:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:5:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:5:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:5:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:5:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:5:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:5:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDisplay|circuit_gen:5:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(7));

-- Location: IOOBUF_X46_Y54_N2
\accept~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	devoe => ww_devoe,
	o => ww_accept);

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X44_Y42_N11
\LCD|Dispatcher|CurrentState.STATE_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \LCD|Dispatcher|CurrentState.STATE_01~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|Dispatcher|CurrentState.STATE_10~q\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X41_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: LCCOMB_X45_Y40_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X45_Y40_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X45_Y40_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X45_Y40_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X45_Y40_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X45_Y40_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X44_Y40_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X44_Y40_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X44_Y40_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X44_Y40_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X44_Y40_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X44_Y40_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X44_Y40_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X44_Y40_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X44_Y40_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X44_Y40_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X44_Y40_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X44_Y40_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X44_Y40_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X45_Y40_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X45_Y40_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X44_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X44_Y41_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X44_Y41_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X44_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X44_Y41_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X44_Y41_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X44_Y41_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X44_Y41_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X44_Y39_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: LCCOMB_X44_Y39_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\);

-- Location: FF_X44_Y39_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X44_Y40_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X44_Y40_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X44_Y40_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X44_Y40_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X44_Y40_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X44_Y40_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X45_Y40_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X45_Y40_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: FF_X41_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X41_Y37_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X41_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X41_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X41_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X41_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X41_Y37_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X41_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X41_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X41_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X41_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X41_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X41_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X41_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X41_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X41_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X41_Y37_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X41_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X41_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: FF_X41_Y34_N15
\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\);

-- Location: LCCOMB_X41_Y34_N8
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~0_combout\ = !\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~0_combout\);

-- Location: LCCOMB_X51_Y30_N0
\kreader|kdecode|cDIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~0_combout\ = \kreader|kdecode|cDIV|count\(0) $ (GND)
-- \kreader|kdecode|cDIV|Add0~1\ = CARRY(!\kreader|kdecode|cDIV|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(0),
	datad => VCC,
	combout => \kreader|kdecode|cDIV|Add0~0_combout\,
	cout => \kreader|kdecode|cDIV|Add0~1\);

-- Location: LCCOMB_X52_Y30_N2
\kreader|kdecode|cDIV|count[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|count[0]~7_combout\ = !\kreader|kdecode|cDIV|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kreader|kdecode|cDIV|Add0~0_combout\,
	combout => \kreader|kdecode|cDIV|count[0]~7_combout\);

-- Location: FF_X52_Y30_N3
\kreader|kdecode|cDIV|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(0));

-- Location: LCCOMB_X51_Y30_N2
\kreader|kdecode|cDIV|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~2_combout\ = (\kreader|kdecode|cDIV|count\(1) & (!\kreader|kdecode|cDIV|Add0~1\)) # (!\kreader|kdecode|cDIV|count\(1) & ((\kreader|kdecode|cDIV|Add0~1\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~3\ = CARRY((!\kreader|kdecode|cDIV|Add0~1\) # (!\kreader|kdecode|cDIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(1),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~1\,
	combout => \kreader|kdecode|cDIV|Add0~2_combout\,
	cout => \kreader|kdecode|cDIV|Add0~3\);

-- Location: FF_X51_Y30_N3
\kreader|kdecode|cDIV|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(1));

-- Location: LCCOMB_X51_Y30_N4
\kreader|kdecode|cDIV|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~4_combout\ = (\kreader|kdecode|cDIV|count\(2) & (\kreader|kdecode|cDIV|Add0~3\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(2) & (!\kreader|kdecode|cDIV|Add0~3\ & VCC))
-- \kreader|kdecode|cDIV|Add0~5\ = CARRY((\kreader|kdecode|cDIV|count\(2) & !\kreader|kdecode|cDIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(2),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~3\,
	combout => \kreader|kdecode|cDIV|Add0~4_combout\,
	cout => \kreader|kdecode|cDIV|Add0~5\);

-- Location: FF_X51_Y30_N5
\kreader|kdecode|cDIV|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(2));

-- Location: LCCOMB_X51_Y30_N6
\kreader|kdecode|cDIV|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~6_combout\ = (\kreader|kdecode|cDIV|count\(3) & (!\kreader|kdecode|cDIV|Add0~5\)) # (!\kreader|kdecode|cDIV|count\(3) & ((\kreader|kdecode|cDIV|Add0~5\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~7\ = CARRY((!\kreader|kdecode|cDIV|Add0~5\) # (!\kreader|kdecode|cDIV|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(3),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~5\,
	combout => \kreader|kdecode|cDIV|Add0~6_combout\,
	cout => \kreader|kdecode|cDIV|Add0~7\);

-- Location: FF_X51_Y30_N7
\kreader|kdecode|cDIV|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(3));

-- Location: LCCOMB_X51_Y30_N8
\kreader|kdecode|cDIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~8_combout\ = (\kreader|kdecode|cDIV|count\(4) & (\kreader|kdecode|cDIV|Add0~7\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(4) & (!\kreader|kdecode|cDIV|Add0~7\ & VCC))
-- \kreader|kdecode|cDIV|Add0~9\ = CARRY((\kreader|kdecode|cDIV|count\(4) & !\kreader|kdecode|cDIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(4),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~7\,
	combout => \kreader|kdecode|cDIV|Add0~8_combout\,
	cout => \kreader|kdecode|cDIV|Add0~9\);

-- Location: LCCOMB_X52_Y29_N18
\kreader|kdecode|cDIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~3_combout\ = (!\kreader|kdecode|cDIV|count\(13) & (\kreader|kdecode|cDIV|count\(14) & (\kreader|kdecode|cDIV|count\(12) & \kreader|kdecode|cDIV|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(13),
	datab => \kreader|kdecode|cDIV|count\(14),
	datac => \kreader|kdecode|cDIV|count\(12),
	datad => \kreader|kdecode|cDIV|count\(15),
	combout => \kreader|kdecode|cDIV|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y30_N28
\kreader|kdecode|cDIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~2_combout\ = (!\kreader|kdecode|cDIV|count\(11) & (!\kreader|kdecode|cDIV|count\(10) & (!\kreader|kdecode|cDIV|count\(8) & !\kreader|kdecode|cDIV|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(11),
	datab => \kreader|kdecode|cDIV|count\(10),
	datac => \kreader|kdecode|cDIV|count\(8),
	datad => \kreader|kdecode|cDIV|count\(9),
	combout => \kreader|kdecode|cDIV|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y30_N26
\kreader|kdecode|cDIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~1_combout\ = (!\kreader|kdecode|cDIV|count\(5) & (\kreader|kdecode|cDIV|count\(7) & (!\kreader|kdecode|cDIV|count\(6) & \kreader|kdecode|cDIV|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(5),
	datab => \kreader|kdecode|cDIV|count\(7),
	datac => \kreader|kdecode|cDIV|count\(6),
	datad => \kreader|kdecode|cDIV|count\(4),
	combout => \kreader|kdecode|cDIV|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y30_N12
\kreader|kdecode|cDIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~0_combout\ = (!\kreader|kdecode|cDIV|count\(1) & (!\kreader|kdecode|cDIV|count\(3) & (!\kreader|kdecode|cDIV|count\(2) & \kreader|kdecode|cDIV|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(1),
	datab => \kreader|kdecode|cDIV|count\(3),
	datac => \kreader|kdecode|cDIV|count\(2),
	datad => \kreader|kdecode|cDIV|count\(0),
	combout => \kreader|kdecode|cDIV|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y30_N18
\kreader|kdecode|cDIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~4_combout\ = (\kreader|kdecode|cDIV|Equal0~3_combout\ & (\kreader|kdecode|cDIV|Equal0~2_combout\ & (\kreader|kdecode|cDIV|Equal0~1_combout\ & \kreader|kdecode|cDIV|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|Equal0~3_combout\,
	datab => \kreader|kdecode|cDIV|Equal0~2_combout\,
	datac => \kreader|kdecode|cDIV|Equal0~1_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~0_combout\,
	combout => \kreader|kdecode|cDIV|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y30_N6
\kreader|kdecode|cDIV|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|count~0_combout\ = (\kreader|kdecode|cDIV|Add0~8_combout\ & ((!\kreader|kdecode|cDIV|Equal0~4_combout\) # (!\kreader|kdecode|cDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|Add0~8_combout\,
	datab => \kreader|kdecode|cDIV|Equal0~9_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~4_combout\,
	combout => \kreader|kdecode|cDIV|count~0_combout\);

-- Location: FF_X52_Y30_N7
\kreader|kdecode|cDIV|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(4));

-- Location: LCCOMB_X51_Y30_N10
\kreader|kdecode|cDIV|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~10_combout\ = (\kreader|kdecode|cDIV|count\(5) & (!\kreader|kdecode|cDIV|Add0~9\)) # (!\kreader|kdecode|cDIV|count\(5) & ((\kreader|kdecode|cDIV|Add0~9\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~11\ = CARRY((!\kreader|kdecode|cDIV|Add0~9\) # (!\kreader|kdecode|cDIV|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(5),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~9\,
	combout => \kreader|kdecode|cDIV|Add0~10_combout\,
	cout => \kreader|kdecode|cDIV|Add0~11\);

-- Location: FF_X51_Y30_N11
\kreader|kdecode|cDIV|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(5));

-- Location: LCCOMB_X51_Y30_N12
\kreader|kdecode|cDIV|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~12_combout\ = (\kreader|kdecode|cDIV|count\(6) & (\kreader|kdecode|cDIV|Add0~11\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(6) & (!\kreader|kdecode|cDIV|Add0~11\ & VCC))
-- \kreader|kdecode|cDIV|Add0~13\ = CARRY((\kreader|kdecode|cDIV|count\(6) & !\kreader|kdecode|cDIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(6),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~11\,
	combout => \kreader|kdecode|cDIV|Add0~12_combout\,
	cout => \kreader|kdecode|cDIV|Add0~13\);

-- Location: FF_X51_Y30_N13
\kreader|kdecode|cDIV|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(6));

-- Location: LCCOMB_X51_Y30_N14
\kreader|kdecode|cDIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~14_combout\ = (\kreader|kdecode|cDIV|count\(7) & (!\kreader|kdecode|cDIV|Add0~13\)) # (!\kreader|kdecode|cDIV|count\(7) & ((\kreader|kdecode|cDIV|Add0~13\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~15\ = CARRY((!\kreader|kdecode|cDIV|Add0~13\) # (!\kreader|kdecode|cDIV|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(7),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~13\,
	combout => \kreader|kdecode|cDIV|Add0~14_combout\,
	cout => \kreader|kdecode|cDIV|Add0~15\);

-- Location: LCCOMB_X52_Y30_N0
\kreader|kdecode|cDIV|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|count~1_combout\ = (\kreader|kdecode|cDIV|Add0~14_combout\ & ((!\kreader|kdecode|cDIV|Equal0~4_combout\) # (!\kreader|kdecode|cDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|Add0~14_combout\,
	datab => \kreader|kdecode|cDIV|Equal0~9_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~4_combout\,
	combout => \kreader|kdecode|cDIV|count~1_combout\);

-- Location: FF_X52_Y30_N1
\kreader|kdecode|cDIV|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(7));

-- Location: LCCOMB_X51_Y30_N16
\kreader|kdecode|cDIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~16_combout\ = (\kreader|kdecode|cDIV|count\(8) & (\kreader|kdecode|cDIV|Add0~15\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(8) & (!\kreader|kdecode|cDIV|Add0~15\ & VCC))
-- \kreader|kdecode|cDIV|Add0~17\ = CARRY((\kreader|kdecode|cDIV|count\(8) & !\kreader|kdecode|cDIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(8),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~15\,
	combout => \kreader|kdecode|cDIV|Add0~16_combout\,
	cout => \kreader|kdecode|cDIV|Add0~17\);

-- Location: FF_X51_Y30_N17
\kreader|kdecode|cDIV|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(8));

-- Location: LCCOMB_X51_Y30_N18
\kreader|kdecode|cDIV|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~18_combout\ = (\kreader|kdecode|cDIV|count\(9) & (!\kreader|kdecode|cDIV|Add0~17\)) # (!\kreader|kdecode|cDIV|count\(9) & ((\kreader|kdecode|cDIV|Add0~17\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~19\ = CARRY((!\kreader|kdecode|cDIV|Add0~17\) # (!\kreader|kdecode|cDIV|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(9),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~17\,
	combout => \kreader|kdecode|cDIV|Add0~18_combout\,
	cout => \kreader|kdecode|cDIV|Add0~19\);

-- Location: FF_X51_Y30_N19
\kreader|kdecode|cDIV|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(9));

-- Location: LCCOMB_X51_Y30_N20
\kreader|kdecode|cDIV|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~20_combout\ = (\kreader|kdecode|cDIV|count\(10) & (\kreader|kdecode|cDIV|Add0~19\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(10) & (!\kreader|kdecode|cDIV|Add0~19\ & VCC))
-- \kreader|kdecode|cDIV|Add0~21\ = CARRY((\kreader|kdecode|cDIV|count\(10) & !\kreader|kdecode|cDIV|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(10),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~19\,
	combout => \kreader|kdecode|cDIV|Add0~20_combout\,
	cout => \kreader|kdecode|cDIV|Add0~21\);

-- Location: FF_X51_Y30_N21
\kreader|kdecode|cDIV|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(10));

-- Location: LCCOMB_X51_Y30_N22
\kreader|kdecode|cDIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~22_combout\ = (\kreader|kdecode|cDIV|count\(11) & (!\kreader|kdecode|cDIV|Add0~21\)) # (!\kreader|kdecode|cDIV|count\(11) & ((\kreader|kdecode|cDIV|Add0~21\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~23\ = CARRY((!\kreader|kdecode|cDIV|Add0~21\) # (!\kreader|kdecode|cDIV|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(11),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~21\,
	combout => \kreader|kdecode|cDIV|Add0~22_combout\,
	cout => \kreader|kdecode|cDIV|Add0~23\);

-- Location: FF_X51_Y30_N23
\kreader|kdecode|cDIV|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(11));

-- Location: LCCOMB_X51_Y30_N24
\kreader|kdecode|cDIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~24_combout\ = (\kreader|kdecode|cDIV|count\(12) & (\kreader|kdecode|cDIV|Add0~23\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(12) & (!\kreader|kdecode|cDIV|Add0~23\ & VCC))
-- \kreader|kdecode|cDIV|Add0~25\ = CARRY((\kreader|kdecode|cDIV|count\(12) & !\kreader|kdecode|cDIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(12),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~23\,
	combout => \kreader|kdecode|cDIV|Add0~24_combout\,
	cout => \kreader|kdecode|cDIV|Add0~25\);

-- Location: LCCOMB_X52_Y30_N30
\kreader|kdecode|cDIV|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|count~2_combout\ = (\kreader|kdecode|cDIV|Add0~24_combout\ & ((!\kreader|kdecode|cDIV|Equal0~4_combout\) # (!\kreader|kdecode|cDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|Equal0~9_combout\,
	datac => \kreader|kdecode|cDIV|Add0~24_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~4_combout\,
	combout => \kreader|kdecode|cDIV|count~2_combout\);

-- Location: FF_X52_Y30_N31
\kreader|kdecode|cDIV|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(12));

-- Location: LCCOMB_X51_Y30_N26
\kreader|kdecode|cDIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~26_combout\ = (\kreader|kdecode|cDIV|count\(13) & (!\kreader|kdecode|cDIV|Add0~25\)) # (!\kreader|kdecode|cDIV|count\(13) & ((\kreader|kdecode|cDIV|Add0~25\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~27\ = CARRY((!\kreader|kdecode|cDIV|Add0~25\) # (!\kreader|kdecode|cDIV|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(13),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~25\,
	combout => \kreader|kdecode|cDIV|Add0~26_combout\,
	cout => \kreader|kdecode|cDIV|Add0~27\);

-- Location: FF_X51_Y30_N27
\kreader|kdecode|cDIV|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(13));

-- Location: LCCOMB_X51_Y30_N28
\kreader|kdecode|cDIV|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~28_combout\ = (\kreader|kdecode|cDIV|count\(14) & (\kreader|kdecode|cDIV|Add0~27\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(14) & (!\kreader|kdecode|cDIV|Add0~27\ & VCC))
-- \kreader|kdecode|cDIV|Add0~29\ = CARRY((\kreader|kdecode|cDIV|count\(14) & !\kreader|kdecode|cDIV|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(14),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~27\,
	combout => \kreader|kdecode|cDIV|Add0~28_combout\,
	cout => \kreader|kdecode|cDIV|Add0~29\);

-- Location: LCCOMB_X52_Y29_N16
\kreader|kdecode|cDIV|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|count~3_combout\ = (\kreader|kdecode|cDIV|Add0~28_combout\ & ((!\kreader|kdecode|cDIV|Equal0~4_combout\) # (!\kreader|kdecode|cDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|Equal0~9_combout\,
	datac => \kreader|kdecode|cDIV|Add0~28_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~4_combout\,
	combout => \kreader|kdecode|cDIV|count~3_combout\);

-- Location: FF_X52_Y29_N17
\kreader|kdecode|cDIV|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(14));

-- Location: LCCOMB_X51_Y30_N30
\kreader|kdecode|cDIV|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~30_combout\ = (\kreader|kdecode|cDIV|count\(15) & (!\kreader|kdecode|cDIV|Add0~29\)) # (!\kreader|kdecode|cDIV|count\(15) & ((\kreader|kdecode|cDIV|Add0~29\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~31\ = CARRY((!\kreader|kdecode|cDIV|Add0~29\) # (!\kreader|kdecode|cDIV|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(15),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~29\,
	combout => \kreader|kdecode|cDIV|Add0~30_combout\,
	cout => \kreader|kdecode|cDIV|Add0~31\);

-- Location: LCCOMB_X52_Y30_N8
\kreader|kdecode|cDIV|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|count~4_combout\ = (\kreader|kdecode|cDIV|Add0~30_combout\ & ((!\kreader|kdecode|cDIV|Equal0~4_combout\) # (!\kreader|kdecode|cDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|Equal0~9_combout\,
	datac => \kreader|kdecode|cDIV|Add0~30_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~4_combout\,
	combout => \kreader|kdecode|cDIV|count~4_combout\);

-- Location: FF_X52_Y30_N9
\kreader|kdecode|cDIV|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(15));

-- Location: LCCOMB_X51_Y29_N0
\kreader|kdecode|cDIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~32_combout\ = (\kreader|kdecode|cDIV|count\(16) & (\kreader|kdecode|cDIV|Add0~31\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(16) & (!\kreader|kdecode|cDIV|Add0~31\ & VCC))
-- \kreader|kdecode|cDIV|Add0~33\ = CARRY((\kreader|kdecode|cDIV|count\(16) & !\kreader|kdecode|cDIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(16),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~31\,
	combout => \kreader|kdecode|cDIV|Add0~32_combout\,
	cout => \kreader|kdecode|cDIV|Add0~33\);

-- Location: LCCOMB_X52_Y29_N20
\kreader|kdecode|cDIV|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|count~5_combout\ = (\kreader|kdecode|cDIV|Add0~32_combout\ & ((!\kreader|kdecode|cDIV|Equal0~4_combout\) # (!\kreader|kdecode|cDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|Add0~32_combout\,
	datab => \kreader|kdecode|cDIV|Equal0~9_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~4_combout\,
	combout => \kreader|kdecode|cDIV|count~5_combout\);

-- Location: FF_X52_Y29_N21
\kreader|kdecode|cDIV|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(16));

-- Location: LCCOMB_X51_Y29_N2
\kreader|kdecode|cDIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~34_combout\ = (\kreader|kdecode|cDIV|count\(17) & (!\kreader|kdecode|cDIV|Add0~33\)) # (!\kreader|kdecode|cDIV|count\(17) & ((\kreader|kdecode|cDIV|Add0~33\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~35\ = CARRY((!\kreader|kdecode|cDIV|Add0~33\) # (!\kreader|kdecode|cDIV|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(17),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~33\,
	combout => \kreader|kdecode|cDIV|Add0~34_combout\,
	cout => \kreader|kdecode|cDIV|Add0~35\);

-- Location: LCCOMB_X52_Y29_N6
\kreader|kdecode|cDIV|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|count~6_combout\ = (\kreader|kdecode|cDIV|Add0~34_combout\ & ((!\kreader|kdecode|cDIV|Equal0~4_combout\) # (!\kreader|kdecode|cDIV|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|Add0~34_combout\,
	datab => \kreader|kdecode|cDIV|Equal0~9_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~4_combout\,
	combout => \kreader|kdecode|cDIV|count~6_combout\);

-- Location: FF_X52_Y29_N7
\kreader|kdecode|cDIV|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(17));

-- Location: LCCOMB_X51_Y29_N4
\kreader|kdecode|cDIV|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~36_combout\ = (\kreader|kdecode|cDIV|count\(18) & (\kreader|kdecode|cDIV|Add0~35\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(18) & (!\kreader|kdecode|cDIV|Add0~35\ & VCC))
-- \kreader|kdecode|cDIV|Add0~37\ = CARRY((\kreader|kdecode|cDIV|count\(18) & !\kreader|kdecode|cDIV|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(18),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~35\,
	combout => \kreader|kdecode|cDIV|Add0~36_combout\,
	cout => \kreader|kdecode|cDIV|Add0~37\);

-- Location: FF_X51_Y29_N5
\kreader|kdecode|cDIV|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(18));

-- Location: LCCOMB_X51_Y29_N6
\kreader|kdecode|cDIV|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~38_combout\ = (\kreader|kdecode|cDIV|count\(19) & (!\kreader|kdecode|cDIV|Add0~37\)) # (!\kreader|kdecode|cDIV|count\(19) & ((\kreader|kdecode|cDIV|Add0~37\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~39\ = CARRY((!\kreader|kdecode|cDIV|Add0~37\) # (!\kreader|kdecode|cDIV|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(19),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~37\,
	combout => \kreader|kdecode|cDIV|Add0~38_combout\,
	cout => \kreader|kdecode|cDIV|Add0~39\);

-- Location: FF_X51_Y29_N7
\kreader|kdecode|cDIV|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(19));

-- Location: LCCOMB_X51_Y29_N8
\kreader|kdecode|cDIV|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~40_combout\ = (\kreader|kdecode|cDIV|count\(20) & (\kreader|kdecode|cDIV|Add0~39\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(20) & (!\kreader|kdecode|cDIV|Add0~39\ & VCC))
-- \kreader|kdecode|cDIV|Add0~41\ = CARRY((\kreader|kdecode|cDIV|count\(20) & !\kreader|kdecode|cDIV|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(20),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~39\,
	combout => \kreader|kdecode|cDIV|Add0~40_combout\,
	cout => \kreader|kdecode|cDIV|Add0~41\);

-- Location: FF_X51_Y29_N9
\kreader|kdecode|cDIV|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(20));

-- Location: LCCOMB_X51_Y29_N10
\kreader|kdecode|cDIV|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~42_combout\ = (\kreader|kdecode|cDIV|count\(21) & (!\kreader|kdecode|cDIV|Add0~41\)) # (!\kreader|kdecode|cDIV|count\(21) & ((\kreader|kdecode|cDIV|Add0~41\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~43\ = CARRY((!\kreader|kdecode|cDIV|Add0~41\) # (!\kreader|kdecode|cDIV|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(21),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~41\,
	combout => \kreader|kdecode|cDIV|Add0~42_combout\,
	cout => \kreader|kdecode|cDIV|Add0~43\);

-- Location: FF_X51_Y29_N11
\kreader|kdecode|cDIV|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(21));

-- Location: LCCOMB_X51_Y29_N12
\kreader|kdecode|cDIV|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~44_combout\ = (\kreader|kdecode|cDIV|count\(22) & (\kreader|kdecode|cDIV|Add0~43\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(22) & (!\kreader|kdecode|cDIV|Add0~43\ & VCC))
-- \kreader|kdecode|cDIV|Add0~45\ = CARRY((\kreader|kdecode|cDIV|count\(22) & !\kreader|kdecode|cDIV|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(22),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~43\,
	combout => \kreader|kdecode|cDIV|Add0~44_combout\,
	cout => \kreader|kdecode|cDIV|Add0~45\);

-- Location: FF_X51_Y29_N13
\kreader|kdecode|cDIV|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(22));

-- Location: LCCOMB_X51_Y29_N14
\kreader|kdecode|cDIV|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~46_combout\ = (\kreader|kdecode|cDIV|count\(23) & (!\kreader|kdecode|cDIV|Add0~45\)) # (!\kreader|kdecode|cDIV|count\(23) & ((\kreader|kdecode|cDIV|Add0~45\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~47\ = CARRY((!\kreader|kdecode|cDIV|Add0~45\) # (!\kreader|kdecode|cDIV|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(23),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~45\,
	combout => \kreader|kdecode|cDIV|Add0~46_combout\,
	cout => \kreader|kdecode|cDIV|Add0~47\);

-- Location: FF_X51_Y29_N15
\kreader|kdecode|cDIV|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(23));

-- Location: LCCOMB_X51_Y29_N16
\kreader|kdecode|cDIV|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~48_combout\ = (\kreader|kdecode|cDIV|count\(24) & (\kreader|kdecode|cDIV|Add0~47\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(24) & (!\kreader|kdecode|cDIV|Add0~47\ & VCC))
-- \kreader|kdecode|cDIV|Add0~49\ = CARRY((\kreader|kdecode|cDIV|count\(24) & !\kreader|kdecode|cDIV|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(24),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~47\,
	combout => \kreader|kdecode|cDIV|Add0~48_combout\,
	cout => \kreader|kdecode|cDIV|Add0~49\);

-- Location: FF_X51_Y29_N17
\kreader|kdecode|cDIV|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(24));

-- Location: LCCOMB_X51_Y29_N18
\kreader|kdecode|cDIV|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~50_combout\ = (\kreader|kdecode|cDIV|count\(25) & (!\kreader|kdecode|cDIV|Add0~49\)) # (!\kreader|kdecode|cDIV|count\(25) & ((\kreader|kdecode|cDIV|Add0~49\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~51\ = CARRY((!\kreader|kdecode|cDIV|Add0~49\) # (!\kreader|kdecode|cDIV|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(25),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~49\,
	combout => \kreader|kdecode|cDIV|Add0~50_combout\,
	cout => \kreader|kdecode|cDIV|Add0~51\);

-- Location: FF_X51_Y29_N19
\kreader|kdecode|cDIV|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(25));

-- Location: LCCOMB_X51_Y29_N20
\kreader|kdecode|cDIV|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~52_combout\ = (\kreader|kdecode|cDIV|count\(26) & (\kreader|kdecode|cDIV|Add0~51\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(26) & (!\kreader|kdecode|cDIV|Add0~51\ & VCC))
-- \kreader|kdecode|cDIV|Add0~53\ = CARRY((\kreader|kdecode|cDIV|count\(26) & !\kreader|kdecode|cDIV|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(26),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~51\,
	combout => \kreader|kdecode|cDIV|Add0~52_combout\,
	cout => \kreader|kdecode|cDIV|Add0~53\);

-- Location: FF_X51_Y29_N21
\kreader|kdecode|cDIV|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(26));

-- Location: LCCOMB_X51_Y29_N22
\kreader|kdecode|cDIV|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~54_combout\ = (\kreader|kdecode|cDIV|count\(27) & (!\kreader|kdecode|cDIV|Add0~53\)) # (!\kreader|kdecode|cDIV|count\(27) & ((\kreader|kdecode|cDIV|Add0~53\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~55\ = CARRY((!\kreader|kdecode|cDIV|Add0~53\) # (!\kreader|kdecode|cDIV|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(27),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~53\,
	combout => \kreader|kdecode|cDIV|Add0~54_combout\,
	cout => \kreader|kdecode|cDIV|Add0~55\);

-- Location: FF_X51_Y29_N23
\kreader|kdecode|cDIV|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(27));

-- Location: LCCOMB_X52_Y29_N12
\kreader|kdecode|cDIV|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~7_combout\ = (!\kreader|kdecode|cDIV|count\(27) & (!\kreader|kdecode|cDIV|count\(26) & (!\kreader|kdecode|cDIV|count\(24) & !\kreader|kdecode|cDIV|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(27),
	datab => \kreader|kdecode|cDIV|count\(26),
	datac => \kreader|kdecode|cDIV|count\(24),
	datad => \kreader|kdecode|cDIV|count\(25),
	combout => \kreader|kdecode|cDIV|Equal0~7_combout\);

-- Location: LCCOMB_X52_Y29_N24
\kreader|kdecode|cDIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~5_combout\ = (\kreader|kdecode|cDIV|count\(16) & (!\kreader|kdecode|cDIV|count\(19) & (!\kreader|kdecode|cDIV|count\(18) & \kreader|kdecode|cDIV|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(16),
	datab => \kreader|kdecode|cDIV|count\(19),
	datac => \kreader|kdecode|cDIV|count\(18),
	datad => \kreader|kdecode|cDIV|count\(17),
	combout => \kreader|kdecode|cDIV|Equal0~5_combout\);

-- Location: LCCOMB_X51_Y29_N24
\kreader|kdecode|cDIV|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~56_combout\ = (\kreader|kdecode|cDIV|count\(28) & (\kreader|kdecode|cDIV|Add0~55\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(28) & (!\kreader|kdecode|cDIV|Add0~55\ & VCC))
-- \kreader|kdecode|cDIV|Add0~57\ = CARRY((\kreader|kdecode|cDIV|count\(28) & !\kreader|kdecode|cDIV|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(28),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~55\,
	combout => \kreader|kdecode|cDIV|Add0~56_combout\,
	cout => \kreader|kdecode|cDIV|Add0~57\);

-- Location: FF_X51_Y29_N25
\kreader|kdecode|cDIV|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(28));

-- Location: LCCOMB_X51_Y29_N26
\kreader|kdecode|cDIV|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~58_combout\ = (\kreader|kdecode|cDIV|count\(29) & (!\kreader|kdecode|cDIV|Add0~57\)) # (!\kreader|kdecode|cDIV|count\(29) & ((\kreader|kdecode|cDIV|Add0~57\) # (GND)))
-- \kreader|kdecode|cDIV|Add0~59\ = CARRY((!\kreader|kdecode|cDIV|Add0~57\) # (!\kreader|kdecode|cDIV|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(29),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~57\,
	combout => \kreader|kdecode|cDIV|Add0~58_combout\,
	cout => \kreader|kdecode|cDIV|Add0~59\);

-- Location: FF_X51_Y29_N27
\kreader|kdecode|cDIV|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(29));

-- Location: LCCOMB_X51_Y29_N28
\kreader|kdecode|cDIV|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~60_combout\ = (\kreader|kdecode|cDIV|count\(30) & (\kreader|kdecode|cDIV|Add0~59\ $ (GND))) # (!\kreader|kdecode|cDIV|count\(30) & (!\kreader|kdecode|cDIV|Add0~59\ & VCC))
-- \kreader|kdecode|cDIV|Add0~61\ = CARRY((\kreader|kdecode|cDIV|count\(30) & !\kreader|kdecode|cDIV|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|count\(30),
	datad => VCC,
	cin => \kreader|kdecode|cDIV|Add0~59\,
	combout => \kreader|kdecode|cDIV|Add0~60_combout\,
	cout => \kreader|kdecode|cDIV|Add0~61\);

-- Location: FF_X51_Y29_N29
\kreader|kdecode|cDIV|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(30));

-- Location: LCCOMB_X51_Y29_N30
\kreader|kdecode|cDIV|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Add0~62_combout\ = \kreader|kdecode|cDIV|count\(31) $ (\kreader|kdecode|cDIV|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(31),
	cin => \kreader|kdecode|cDIV|Add0~61\,
	combout => \kreader|kdecode|cDIV|Add0~62_combout\);

-- Location: FF_X51_Y29_N31
\kreader|kdecode|cDIV|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|count\(31));

-- Location: LCCOMB_X52_Y29_N22
\kreader|kdecode|cDIV|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~8_combout\ = (!\kreader|kdecode|cDIV|count\(31) & (!\kreader|kdecode|cDIV|count\(30) & (!\kreader|kdecode|cDIV|count\(29) & !\kreader|kdecode|cDIV|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(31),
	datab => \kreader|kdecode|cDIV|count\(30),
	datac => \kreader|kdecode|cDIV|count\(29),
	datad => \kreader|kdecode|cDIV|count\(28),
	combout => \kreader|kdecode|cDIV|Equal0~8_combout\);

-- Location: LCCOMB_X52_Y29_N10
\kreader|kdecode|cDIV|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~6_combout\ = (!\kreader|kdecode|cDIV|count\(22) & (!\kreader|kdecode|cDIV|count\(20) & (!\kreader|kdecode|cDIV|count\(23) & !\kreader|kdecode|cDIV|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|count\(22),
	datab => \kreader|kdecode|cDIV|count\(20),
	datac => \kreader|kdecode|cDIV|count\(23),
	datad => \kreader|kdecode|cDIV|count\(21),
	combout => \kreader|kdecode|cDIV|Equal0~6_combout\);

-- Location: LCCOMB_X52_Y29_N0
\kreader|kdecode|cDIV|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|Equal0~9_combout\ = (\kreader|kdecode|cDIV|Equal0~7_combout\ & (\kreader|kdecode|cDIV|Equal0~5_combout\ & (\kreader|kdecode|cDIV|Equal0~8_combout\ & \kreader|kdecode|cDIV|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|cDIV|Equal0~7_combout\,
	datab => \kreader|kdecode|cDIV|Equal0~5_combout\,
	datac => \kreader|kdecode|cDIV|Equal0~8_combout\,
	datad => \kreader|kdecode|cDIV|Equal0~6_combout\,
	combout => \kreader|kdecode|cDIV|Equal0~9_combout\);

-- Location: LCCOMB_X52_Y30_N16
\kreader|kdecode|cDIV|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|cDIV|tmp~0_combout\ = \kreader|kdecode|cDIV|tmp~q\ $ (((\kreader|kdecode|cDIV|Equal0~9_combout\ & \kreader|kdecode|cDIV|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|cDIV|Equal0~9_combout\,
	datac => \kreader|kdecode|cDIV|tmp~q\,
	datad => \kreader|kdecode|cDIV|Equal0~4_combout\,
	combout => \kreader|kdecode|cDIV|tmp~0_combout\);

-- Location: FF_X52_Y30_N17
\kreader|kdecode|cDIV|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|kdecode|cDIV|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|cDIV|tmp~q\);

-- Location: CLKCTRL_G5
\kreader|kdecode|cDIV|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kreader|kdecode|cDIV|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kreader|kdecode|cDIV|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y34_N0
\kreader|RingBuff|RingBufferCtrl|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\ = (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\ & (\kreader|kdecode|kctrl|CurrentState.STATE_01~q\ & !\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_01~q\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\,
	combout => \kreader|RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\);

-- Location: FF_X41_Y34_N1
\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\);

-- Location: FF_X40_Y34_N31
\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\);

-- Location: LCCOMB_X40_Y34_N24
\kreader|RingBuff|RingBufferCtrl|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|Selector4~0_combout\ = (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\) # ((\kreader|kdecode|kctrl|CurrentState.STATE_01~q\ & \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	datab => \kreader|kdecode|kctrl|CurrentState.STATE_01~q\,
	datac => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	combout => \kreader|RingBuff|RingBufferCtrl|Selector4~0_combout\);

-- Location: FF_X40_Y34_N25
\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|RingBufferCtrl|Selector4~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X39_Y32_N4
\kreader|RingBuff|RingBufferCtrl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|Selector1~0_combout\ = (\kreader|kdecode|kctrl|CurrentState.STATE_01~q\ & \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kctrl|CurrentState.STATE_01~q\,
	datac => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	combout => \kreader|RingBuff|RingBufferCtrl|Selector1~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\I[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(0),
	o => \I[0]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\I[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(1),
	o => \I[1]~input_o\);

-- Location: LCCOMB_X39_Y32_N20
\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0_combout\ = \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ $ (((!\kreader|kdecode|kctrl|CurrentState.STATE_00~q\ & \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kctrl|CurrentState.STATE_00~q\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datad => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	combout => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0_combout\);

-- Location: FF_X39_Y32_N21
\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|kdecode|cDIV|tmp~clkctrl_outclk\,
	d => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X39_Y32_N12
\kreader|kdecode|kscan|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|mux|Y~0_combout\ = (!\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ & ((\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & ((\I[1]~input_o\))) # (!\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & (\I[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[0]~input_o\,
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \I[1]~input_o\,
	datad => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	combout => \kreader|kdecode|kscan|mux|Y~0_combout\);

-- Location: LCCOMB_X39_Y32_N10
\kreader|kdecode|kctrl|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kctrl|Selector2~0_combout\ = (\kreader|RingBuff|RingBufferCtrl|Selector1~0_combout\) # ((!\kreader|kdecode|kscan|mux|Y~1_combout\ & (\kreader|kdecode|kctrl|CurrentState.STATE_10~q\ & !\kreader|kdecode|kscan|mux|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|RingBufferCtrl|Selector1~0_combout\,
	datab => \kreader|kdecode|kscan|mux|Y~1_combout\,
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_10~q\,
	datad => \kreader|kdecode|kscan|mux|Y~0_combout\,
	combout => \kreader|kdecode|kctrl|Selector2~0_combout\);

-- Location: FF_X39_Y32_N11
\kreader|kdecode|kctrl|CurrentState.STATE_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|kdecode|cDIV|ALT_INV_tmp~clkctrl_outclk\,
	d => \kreader|kdecode|kctrl|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|kctrl|CurrentState.STATE_10~q\);

-- Location: LCCOMB_X39_Y32_N8
\kreader|kdecode|kctrl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kctrl|Selector0~0_combout\ = (\kreader|kdecode|kscan|mux|Y~1_combout\) # (\kreader|kdecode|kscan|mux|Y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kreader|kdecode|kscan|mux|Y~1_combout\,
	datad => \kreader|kdecode|kscan|mux|Y~0_combout\,
	combout => \kreader|kdecode|kctrl|Selector0~0_combout\);

-- Location: LCCOMB_X39_Y32_N26
\kreader|kdecode|kctrl|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kctrl|Selector0~1_combout\ = (\kreader|kdecode|kctrl|CurrentState.STATE_00~q\ & (((!\kreader|kdecode|kctrl|Selector0~0_combout\)) # (!\kreader|kdecode|kctrl|CurrentState.STATE_10~q\))) # (!\kreader|kdecode|kctrl|CurrentState.STATE_00~q\ & 
-- (((!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\ & !\kreader|kdecode|kctrl|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kctrl|CurrentState.STATE_10~q\,
	datab => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_00~q\,
	datad => \kreader|kdecode|kctrl|Selector0~0_combout\,
	combout => \kreader|kdecode|kctrl|Selector0~1_combout\);

-- Location: FF_X39_Y32_N27
\kreader|kdecode|kctrl|CurrentState.STATE_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|kdecode|cDIV|ALT_INV_tmp~clkctrl_outclk\,
	d => \kreader|kdecode|kctrl|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|kctrl|CurrentState.STATE_00~q\);

-- Location: LCCOMB_X39_Y32_N30
\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0_combout\ = \kreader|kdecode|kctrl|CurrentState.STATE_00~q\ $ (!\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kctrl|CurrentState.STATE_00~q\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	combout => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: FF_X39_Y32_N31
\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|kdecode|cDIV|tmp~clkctrl_outclk\,
	d => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\);

-- Location: IOIBUF_X40_Y0_N22
\I[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(3),
	o => \I[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\I[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(2),
	o => \I[2]~input_o\);

-- Location: LCCOMB_X39_Y32_N14
\kreader|kdecode|kscan|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|mux|Y~1_combout\ = (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ & ((\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & (\I[3]~input_o\)) # (!\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & ((\I[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \I[3]~input_o\,
	datad => \I[2]~input_o\,
	combout => \kreader|kdecode|kscan|mux|Y~1_combout\);

-- Location: LCCOMB_X39_Y32_N22
\kreader|kdecode|kctrl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kctrl|Selector1~0_combout\ = (\kreader|kdecode|kscan|mux|Y~1_combout\) # ((\kreader|kdecode|kctrl|CurrentState.STATE_00~q\) # (\kreader|kdecode|kscan|mux|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|mux|Y~1_combout\,
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_00~q\,
	datad => \kreader|kdecode|kscan|mux|Y~0_combout\,
	combout => \kreader|kdecode|kctrl|Selector1~0_combout\);

-- Location: LCCOMB_X39_Y32_N2
\kreader|kdecode|kctrl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kctrl|Selector1~1_combout\ = (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\ & ((\kreader|kdecode|kctrl|CurrentState.STATE_01~q\) # (!\kreader|kdecode|kctrl|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kctrl|Selector1~0_combout\,
	datab => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_01~q\,
	combout => \kreader|kdecode|kctrl|Selector1~1_combout\);

-- Location: FF_X39_Y32_N3
\kreader|kdecode|kctrl|CurrentState.STATE_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|kdecode|cDIV|ALT_INV_tmp~clkctrl_outclk\,
	d => \kreader|kdecode|kctrl|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|kctrl|CurrentState.STATE_01~q\);

-- Location: LCCOMB_X41_Y34_N28
\kreader|RingBuff|RingBufferCtrl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|Selector1~1_combout\ = (!\kreader|kdecode|kctrl|CurrentState.STATE_01~q\ & \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_01~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	combout => \kreader|RingBuff|RingBufferCtrl|Selector1~1_combout\);

-- Location: FF_X41_Y34_N29
\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|RingBufferCtrl|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\);

-- Location: LCCOMB_X41_Y34_N14
\kreader|RingBuff|RingBufferCtrl|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|Selector8~0_combout\ = (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\) # (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \kreader|RingBuff|RingBufferCtrl|Selector8~0_combout\);

-- Location: FF_X41_Y34_N9
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \kreader|RingBuff|RingBufferCtrl|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\);

-- Location: LCCOMB_X41_Y34_N26
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|HA2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|HA2|S~combout\ = \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\ $ (((\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\ & 
-- ((\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\))) # (!\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\ & (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ & 
-- !\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|HA2|S~combout\);

-- Location: FF_X41_Y34_N27
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|HA2|S~combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \kreader|RingBuff|RingBufferCtrl|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X41_Y34_N30
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co~combout\ = (\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\ & (((\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\)) # 
-- (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\))) # (!\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\ & (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & 
-- ((\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\) # (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\,
	datab => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co~combout\);

-- Location: LCCOMB_X41_Y34_N2
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA2|HA2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA2|HA2|S~combout\ = \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co~combout\ $ (\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\ $ 
-- (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co~combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA2|HA2|S~combout\);

-- Location: FF_X41_Y34_N3
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA2|HA2|S~combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \kreader|RingBuff|RingBufferCtrl|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X41_Y34_N10
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA3|HA2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA3|HA2|S~combout\ = \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\ $ (((\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co~combout\ & 
-- (\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\ & \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\)) # (!\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co~combout\ & 
-- (!\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\ & !\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA1|Co~combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA3|HA2|S~combout\);

-- Location: FF_X41_Y34_N11
\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|A_FA3|HA2|S~combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \kreader|RingBuff|RingBufferCtrl|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\);

-- Location: IOIBUF_X69_Y54_N1
\manut~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_manut,
	o => \manut~input_o\);

-- Location: LCCOMB_X43_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X43_Y38_N26
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X44_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\);

-- Location: FF_X44_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X40_Y34_N10
\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ = \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ $ (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\);

-- Location: FF_X40_Y34_N11
\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\);

-- Location: LCCOMB_X40_Y34_N20
\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ = \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ $ (\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\);

-- Location: FF_X40_Y34_N21
\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\);

-- Location: LCCOMB_X40_Y34_N30
\kreader|RingBuff|RingBufferCtrl|wr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|wr~0_combout\ = (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\ & !\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	combout => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\);

-- Location: LCCOMB_X40_Y34_N26
\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ = (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\ & (\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\)) # (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\ 
-- & ((\kreader|RingBuff|RingBufferCtrl|wr~0_combout\ & ((\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\))) # (!\kreader|RingBuff|RingBufferCtrl|wr~0_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datac => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\);

-- Location: LCCOMB_X40_Y34_N6
\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ = \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\ $ (((\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ & 
-- \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\);

-- Location: FF_X40_Y34_N7
\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X40_Y34_N4
\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ = \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\ $ (((\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\ & 
-- (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ & \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datab => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\);

-- Location: FF_X40_Y34_N5
\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X40_Y34_N28
\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ = \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ $ (((\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\);

-- Location: FF_X40_Y34_N29
\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X40_Y34_N2
\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ = \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ $ (((\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- (\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\);

-- Location: FF_X40_Y34_N3
\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X40_Y34_N22
\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ = (\kreader|RingBuff|RingBufferCtrl|wr~0_combout\ & ((\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\ & ((\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\))) # 
-- (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\ & (\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\)))) # (!\kreader|RingBuff|RingBufferCtrl|wr~0_combout\ & 
-- (((\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\);

-- Location: LCCOMB_X40_Y34_N8
\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ = (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\ & (((\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\)))) # 
-- (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\ & ((\kreader|RingBuff|RingBufferCtrl|wr~0_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\)) # (!\kreader|RingBuff|RingBufferCtrl|wr~0_combout\ & 
-- ((\kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\);

-- Location: LCCOMB_X40_Y34_N16
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & !\kreader|RingBuff|RingBufferCtrl|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G4
\rtl~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X38_Y33_N20
\kreader|RingBuff|R|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~21_combout\,
	combout => \kreader|RingBuff|R|ram~21_combout\);

-- Location: LCCOMB_X40_Y31_N26
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & !\kreader|RingBuff|RingBufferCtrl|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G17
\rtl~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X38_Y33_N6
\kreader|RingBuff|R|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~25_combout\,
	combout => \kreader|RingBuff|R|ram~25_combout\);

-- Location: LCCOMB_X40_Y31_N20
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & !\kreader|RingBuff|RingBufferCtrl|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G8
\rtl~6clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X39_Y33_N18
\kreader|RingBuff|R|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~17_combout\,
	combout => \kreader|RingBuff|R|ram~17_combout\);

-- Location: LCCOMB_X38_Y33_N8
\kreader|RingBuff|R|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~37_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\kreader|RingBuff|R|ram~25_combout\) # ((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # 
-- (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & \kreader|RingBuff|R|ram~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~25_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~17_combout\,
	combout => \kreader|RingBuff|R|ram~37_combout\);

-- Location: LCCOMB_X40_Y31_N6
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & !\kreader|RingBuff|RingBufferCtrl|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G11
\rtl~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X38_Y33_N16
\kreader|RingBuff|R|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7clkctrl_outclk\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datad => \kreader|RingBuff|R|ram~29_combout\,
	combout => \kreader|RingBuff|R|ram~29_combout\);

-- Location: LCCOMB_X38_Y33_N26
\kreader|RingBuff|R|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~38_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\kreader|RingBuff|R|ram~37_combout\ & ((\kreader|RingBuff|R|ram~29_combout\))) # (!\kreader|RingBuff|R|ram~37_combout\ & 
-- (\kreader|RingBuff|R|ram~21_combout\)))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\kreader|RingBuff|R|ram~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datab => \kreader|RingBuff|R|ram~21_combout\,
	datac => \kreader|RingBuff|R|ram~37_combout\,
	datad => \kreader|RingBuff|R|ram~29_combout\,
	combout => \kreader|RingBuff|R|ram~38_combout\);

-- Location: LCCOMB_X40_Y31_N8
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & !\kreader|RingBuff|RingBufferCtrl|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G9
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X37_Y30_N12
\kreader|RingBuff|R|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~9_combout\,
	combout => \kreader|RingBuff|R|ram~9_combout\);

-- Location: LCCOMB_X40_Y31_N30
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & !\kreader|RingBuff|RingBufferCtrl|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G16
\rtl~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X37_Y30_N0
\kreader|RingBuff|R|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3clkctrl_outclk\,
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datad => \kreader|RingBuff|R|ram~13_combout\,
	combout => \kreader|RingBuff|R|ram~13_combout\);

-- Location: LCCOMB_X40_Y31_N10
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & !\kreader|RingBuff|RingBufferCtrl|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G15
\rtl~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X37_Y30_N6
\kreader|RingBuff|R|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~5_combout\,
	combout => \kreader|RingBuff|R|ram~5_combout\);

-- Location: LCCOMB_X40_Y31_N12
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & !\kreader|RingBuff|RingBufferCtrl|wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|RingBufferCtrl|wr~0_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G18
\rtl~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X38_Y30_N24
\kreader|RingBuff|R|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~1_combout\,
	combout => \kreader|RingBuff|R|ram~1_combout\);

-- Location: LCCOMB_X37_Y30_N24
\kreader|RingBuff|R|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~39_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & 
-- ((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (\kreader|RingBuff|R|ram~5_combout\)) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\kreader|RingBuff|R|ram~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~5_combout\,
	datab => \kreader|RingBuff|R|ram~1_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	combout => \kreader|RingBuff|R|ram~39_combout\);

-- Location: LCCOMB_X37_Y30_N2
\kreader|RingBuff|R|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~40_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\kreader|RingBuff|R|ram~39_combout\ & ((\kreader|RingBuff|R|ram~13_combout\))) # (!\kreader|RingBuff|R|ram~39_combout\ & 
-- (\kreader|RingBuff|R|ram~9_combout\)))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\kreader|RingBuff|R|ram~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~9_combout\,
	datab => \kreader|RingBuff|R|ram~13_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \kreader|RingBuff|R|ram~39_combout\,
	combout => \kreader|RingBuff|R|ram~40_combout\);

-- Location: LCCOMB_X40_Y34_N0
\kreader|RingBuff|R|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~41_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\kreader|RingBuff|R|ram~38_combout\)) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\kreader|RingBuff|R|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|RingBuff|R|ram~38_combout\,
	datac => \kreader|RingBuff|R|ram~40_combout\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	combout => \kreader|RingBuff|R|ram~41_combout\);

-- Location: FF_X40_Y34_N1
\kreader|OutputBuff|Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\,
	d => \kreader|RingBuff|R|ram~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|OutputBuff|Reg|FFD2|Q~q\);

-- Location: LCCOMB_X45_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|OutputBuff|Reg|FFD2|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: LCCOMB_X44_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X44_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X45_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X45_Y41_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X44_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X44_Y41_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X44_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X44_Y41_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X39_Y32_N0
\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0_combout\ = \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ $ (((!\kreader|kdecode|kctrl|CurrentState.STATE_00~q\ & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & 
-- \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kctrl|CurrentState.STATE_00~q\,
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datad => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	combout => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0_combout\);

-- Location: FF_X39_Y32_N1
\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|kdecode|cDIV|tmp~clkctrl_outclk\,
	d => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X39_Y32_N24
\kreader|kdecode|kscan|contador|U1|CC_Adder|FA3|HA2|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|contador|U1|CC_Adder|FA3|HA2|Co~combout\ = (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & (!\kreader|kdecode|kctrl|CurrentState.STATE_00~q\ & 
-- \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_00~q\,
	datad => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	combout => \kreader|kdecode|kscan|contador|U1|CC_Adder|FA3|HA2|Co~combout\);

-- Location: LCCOMB_X38_Y32_N8
\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\ = \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\ $ (\kreader|kdecode|kscan|contador|U1|CC_Adder|FA3|HA2|Co~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datad => \kreader|kdecode|kscan|contador|U1|CC_Adder|FA3|HA2|Co~combout\,
	combout => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\);

-- Location: FF_X38_Y32_N9
\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|kdecode|cDIV|tmp~clkctrl_outclk\,
	d => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X38_Y32_N10
\kreader|RingBuff|R|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\kreader|RingBuff|R|ram~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~15_combout\,
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \kreader|RingBuff|R|ram~15_combout\);

-- Location: LCCOMB_X38_Y32_N16
\kreader|RingBuff|R|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~11_combout\,
	combout => \kreader|RingBuff|R|ram~11_combout\);

-- Location: LCCOMB_X39_Y30_N12
\kreader|RingBuff|R|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~3_combout\,
	combout => \kreader|RingBuff|R|ram~3_combout\);

-- Location: LCCOMB_X39_Y30_N10
\kreader|RingBuff|R|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~7_combout\,
	combout => \kreader|RingBuff|R|ram~7_combout\);

-- Location: LCCOMB_X39_Y30_N16
\kreader|RingBuff|R|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~49_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\) # (\kreader|RingBuff|R|ram~7_combout\)))) # 
-- (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (\kreader|RingBuff|R|ram~3_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~3_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \kreader|RingBuff|R|ram~7_combout\,
	combout => \kreader|RingBuff|R|ram~49_combout\);

-- Location: LCCOMB_X38_Y32_N24
\kreader|RingBuff|R|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~50_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\kreader|RingBuff|R|ram~49_combout\ & (\kreader|RingBuff|R|ram~15_combout\)) # (!\kreader|RingBuff|R|ram~49_combout\ & 
-- ((\kreader|RingBuff|R|ram~11_combout\))))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\kreader|RingBuff|R|ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~15_combout\,
	datab => \kreader|RingBuff|R|ram~11_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \kreader|RingBuff|R|ram~49_combout\,
	combout => \kreader|RingBuff|R|ram~50_combout\);

-- Location: LCCOMB_X38_Y32_N6
\kreader|RingBuff|R|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~19_combout\,
	combout => \kreader|RingBuff|R|ram~19_combout\);

-- Location: LCCOMB_X38_Y33_N2
\kreader|RingBuff|R|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~27_combout\,
	combout => \kreader|RingBuff|R|ram~27_combout\);

-- Location: LCCOMB_X38_Y33_N24
\kreader|RingBuff|R|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~47_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\) # (\kreader|RingBuff|R|ram~27_combout\)))) # 
-- (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\kreader|RingBuff|R|ram~19_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~19_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~27_combout\,
	combout => \kreader|RingBuff|R|ram~47_combout\);

-- Location: LCCOMB_X38_Y33_N0
\kreader|RingBuff|R|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~23_combout\,
	combout => \kreader|RingBuff|R|ram~23_combout\);

-- Location: LCCOMB_X38_Y33_N28
\kreader|RingBuff|R|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7clkctrl_outclk\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datad => \kreader|RingBuff|R|ram~31_combout\,
	combout => \kreader|RingBuff|R|ram~31_combout\);

-- Location: LCCOMB_X38_Y33_N18
\kreader|RingBuff|R|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~48_combout\ = (\kreader|RingBuff|R|ram~47_combout\ & (((\kreader|RingBuff|R|ram~31_combout\) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\kreader|RingBuff|R|ram~47_combout\ & 
-- (\kreader|RingBuff|R|ram~23_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~47_combout\,
	datab => \kreader|RingBuff|R|ram~23_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~31_combout\,
	combout => \kreader|RingBuff|R|ram~48_combout\);

-- Location: LCCOMB_X38_Y32_N4
\kreader|RingBuff|R|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~51_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\kreader|RingBuff|R|ram~48_combout\))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\kreader|RingBuff|R|ram~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|RingBuff|R|ram~50_combout\,
	datac => \kreader|RingBuff|R|ram~48_combout\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	combout => \kreader|RingBuff|R|ram~51_combout\);

-- Location: FF_X38_Y32_N5
\kreader|OutputBuff|Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\,
	d => \kreader|RingBuff|R|ram~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|OutputBuff|Reg|FFD4|Q~q\);

-- Location: LCCOMB_X44_Y39_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X56_Y54_N1
\coin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin,
	o => \coin~input_o\);

-- Location: LCCOMB_X45_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \coin~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X45_Y41_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X45_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \~GND~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X45_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X45_Y41_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datab => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X45_Y41_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X44_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|OutputBuff|Reg|FFD4|Q~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X44_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X44_Y41_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X39_Y33_N6
\kreader|RingBuff|R|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2clkctrl_outclk\,
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datad => \kreader|RingBuff|R|ram~2_combout\,
	combout => \kreader|RingBuff|R|ram~2_combout\);

-- Location: LCCOMB_X39_Y33_N12
\kreader|RingBuff|R|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~6_combout\,
	combout => \kreader|RingBuff|R|ram~6_combout\);

-- Location: LCCOMB_X39_Y33_N24
\kreader|RingBuff|R|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~44_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & 
-- ((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\kreader|RingBuff|R|ram~6_combout\))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (\kreader|RingBuff|R|ram~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~2_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~6_combout\,
	combout => \kreader|RingBuff|R|ram~44_combout\);

-- Location: LCCOMB_X38_Y32_N28
\kreader|RingBuff|R|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~3clkctrl_outclk\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datad => \kreader|RingBuff|R|ram~14_combout\,
	combout => \kreader|RingBuff|R|ram~14_combout\);

-- Location: LCCOMB_X38_Y32_N18
\kreader|RingBuff|R|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~10_combout\,
	combout => \kreader|RingBuff|R|ram~10_combout\);

-- Location: LCCOMB_X38_Y32_N30
\kreader|RingBuff|R|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~45_combout\ = (\kreader|RingBuff|R|ram~44_combout\ & ((\kreader|RingBuff|R|ram~14_combout\) # ((!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\kreader|RingBuff|R|ram~44_combout\ & 
-- (((\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & \kreader|RingBuff|R|ram~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~44_combout\,
	datab => \kreader|RingBuff|R|ram~14_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \kreader|RingBuff|R|ram~10_combout\,
	combout => \kreader|RingBuff|R|ram~45_combout\);

-- Location: LCCOMB_X38_Y33_N22
\kreader|RingBuff|R|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kreader|RingBuff|R|ram~30_combout\,
	datad => \rtl~7clkctrl_outclk\,
	combout => \kreader|RingBuff|R|ram~30_combout\);

-- Location: LCCOMB_X37_Y33_N0
\kreader|RingBuff|R|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~18_combout\,
	combout => \kreader|RingBuff|R|ram~18_combout\);

-- Location: LCCOMB_X38_Y33_N12
\kreader|RingBuff|R|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~26_combout\,
	combout => \kreader|RingBuff|R|ram~26_combout\);

-- Location: LCCOMB_X38_Y33_N4
\kreader|RingBuff|R|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~42_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\) # (\kreader|RingBuff|R|ram~26_combout\)))) # 
-- (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\kreader|RingBuff|R|ram~18_combout\ & (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~18_combout\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~26_combout\,
	combout => \kreader|RingBuff|R|ram~42_combout\);

-- Location: LCCOMB_X38_Y33_N10
\kreader|RingBuff|R|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~22_combout\,
	combout => \kreader|RingBuff|R|ram~22_combout\);

-- Location: LCCOMB_X38_Y33_N30
\kreader|RingBuff|R|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~43_combout\ = (\kreader|RingBuff|R|ram~42_combout\ & ((\kreader|RingBuff|R|ram~30_combout\) # ((!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\kreader|RingBuff|R|ram~42_combout\ & 
-- (((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & \kreader|RingBuff|R|ram~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~30_combout\,
	datab => \kreader|RingBuff|R|ram~42_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~22_combout\,
	combout => \kreader|RingBuff|R|ram~43_combout\);

-- Location: LCCOMB_X38_Y32_N26
\kreader|RingBuff|R|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~46_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\kreader|RingBuff|R|ram~43_combout\))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\kreader|RingBuff|R|ram~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~45_combout\,
	datac => \kreader|RingBuff|R|ram~43_combout\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	combout => \kreader|RingBuff|R|ram~46_combout\);

-- Location: FF_X38_Y32_N27
\kreader|OutputBuff|Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\,
	d => \kreader|RingBuff|R|ram~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|OutputBuff|Reg|FFD3|Q~q\);

-- Location: LCCOMB_X45_Y41_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \kreader|OutputBuff|Reg|FFD3|Q~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X45_Y41_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X44_Y39_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X44_Y39_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X44_Y39_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X44_Y39_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X44_Y39_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X44_Y40_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X44_Y40_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X44_Y40_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X44_Y40_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X44_Y40_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X43_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X45_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \manut~input_o\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X45_Y41_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: LCCOMB_X45_Y41_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X44_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X45_Y41_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X41_Y34_N16
\kreader|OutputBuff|OutputBufferCtrl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|OutputBuff|OutputBufferCtrl|Selector1~0_combout\ = (\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\) # ((\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\ & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\,
	datac => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \kreader|OutputBuff|OutputBufferCtrl|Selector1~0_combout\);

-- Location: FF_X41_Y34_N17
\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|OutputBuff|OutputBufferCtrl|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\);

-- Location: LCCOMB_X41_Y34_N4
\kreader|OutputBuff|OutputBufferCtrl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|OutputBuff|OutputBufferCtrl|Selector0~0_combout\ = (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\ & 
-- (((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\)) # 
-- (!\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\))) # (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\ & (\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ & 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\) # 
-- (!\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\,
	datab => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\,
	datac => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \kreader|OutputBuff|OutputBufferCtrl|Selector0~0_combout\);

-- Location: FF_X41_Y34_N5
\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|OutputBuff|OutputBufferCtrl|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\);

-- Location: LCCOMB_X41_Y34_N12
\kreader|RingBuff|MemoryAddressCtrl|empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|MemoryAddressCtrl|empty~0_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\) # ((\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\) # 
-- (\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD1|Q~q\,
	datab => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD2|Q~q\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD0|Q~q\,
	combout => \kreader|RingBuff|MemoryAddressCtrl|empty~0_combout\);

-- Location: LCCOMB_X41_Y34_N18
\kreader|RingBuff|RingBufferCtrl|NextState.STATE_000~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\ & (!\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\)) # 
-- (!\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\ & ((\kreader|kdecode|kctrl|CurrentState.STATE_01~q\) # ((!\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ & \kreader|RingBuff|MemoryAddressCtrl|empty~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\,
	datab => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_01~q\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|empty~0_combout\,
	combout => \kreader|RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\);

-- Location: LCCOMB_X41_Y34_N24
\kreader|RingBuff|RingBufferCtrl|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|Selector8~1_combout\ = (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ & (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & ((\kreader|RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\) # 
-- (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datab => \kreader|RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\,
	datac => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \kreader|RingBuff|RingBufferCtrl|Selector8~1_combout\);

-- Location: FF_X41_Y34_N25
\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|RingBufferCtrl|Selector8~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X41_Y34_N6
\kreader|RingBuff|RingBufferCtrl|NextState.STATE_100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\ = (!\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ & ((\kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\) # ((!\kreader|kdecode|kctrl|CurrentState.STATE_01~q\ 
-- & \kreader|RingBuff|MemoryAddressCtrl|empty~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|R_FFD3|Q~q\,
	datab => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datac => \kreader|kdecode|kctrl|CurrentState.STATE_01~q\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|empty~0_combout\,
	combout => \kreader|RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\);

-- Location: LCCOMB_X41_Y34_N22
\kreader|RingBuff|RingBufferCtrl|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|RingBufferCtrl|comb~0_combout\ = (!\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\ & \kreader|RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	datad => \kreader|RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\,
	combout => \kreader|RingBuff|RingBufferCtrl|comb~0_combout\);

-- Location: FF_X41_Y34_N23
\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|RingBuff|RingBufferCtrl|comb~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\);

-- Location: LCCOMB_X41_Y34_N20
\kreader|OutputBuff|OutputBufferCtrl|NextState.STATE_01~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|OutputBuff|OutputBufferCtrl|NextState.STATE_01~0_combout\ = (\kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\ & !\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\,
	datac => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	combout => \kreader|OutputBuff|OutputBufferCtrl|NextState.STATE_01~0_combout\);

-- Location: FF_X41_Y34_N21
\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kreader|OutputBuff|OutputBufferCtrl|NextState.STATE_01~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\);

-- Location: CLKCTRL_G14
\kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y31_N10
\kreader|RingBuff|R|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~8_combout\,
	combout => \kreader|RingBuff|R|ram~8_combout\);

-- Location: LCCOMB_X39_Y32_N28
\kreader|RingBuff|R|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~12_combout\,
	combout => \kreader|RingBuff|R|ram~12_combout\);

-- Location: LCCOMB_X40_Y31_N18
\kreader|RingBuff|R|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datab => \rtl~1clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~4_combout\,
	combout => \kreader|RingBuff|R|ram~4_combout\);

-- Location: LCCOMB_X40_Y31_N28
\kreader|RingBuff|R|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~0_combout\,
	combout => \kreader|RingBuff|R|ram~0_combout\);

-- Location: LCCOMB_X40_Y31_N22
\kreader|RingBuff|R|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~34_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & 
-- ((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (\kreader|RingBuff|R|ram~4_combout\)) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\kreader|RingBuff|R|ram~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|R|ram~4_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~0_combout\,
	combout => \kreader|RingBuff|R|ram~34_combout\);

-- Location: LCCOMB_X40_Y31_N24
\kreader|RingBuff|R|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~35_combout\ = (\kreader|RingBuff|R|ram~34_combout\ & (((\kreader|RingBuff|R|ram~12_combout\) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\kreader|RingBuff|R|ram~34_combout\ & 
-- (\kreader|RingBuff|R|ram~8_combout\ & ((\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~8_combout\,
	datab => \kreader|RingBuff|R|ram~12_combout\,
	datac => \kreader|RingBuff|R|ram~34_combout\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \kreader|RingBuff|R|ram~35_combout\);

-- Location: LCCOMB_X39_Y31_N0
\kreader|RingBuff|R|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~20_combout\,
	combout => \kreader|RingBuff|R|ram~20_combout\);

-- Location: LCCOMB_X40_Y31_N16
\kreader|RingBuff|R|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~24_combout\,
	combout => \kreader|RingBuff|R|ram~24_combout\);

-- Location: LCCOMB_X39_Y32_N16
\kreader|RingBuff|R|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \kreader|RingBuff|R|ram~16_combout\,
	combout => \kreader|RingBuff|R|ram~16_combout\);

-- Location: LCCOMB_X40_Y31_N2
\kreader|RingBuff|R|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~32_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\kreader|RingBuff|R|ram~24_combout\) # ((\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # 
-- (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & \kreader|RingBuff|R|ram~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \kreader|RingBuff|R|ram~24_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~16_combout\,
	combout => \kreader|RingBuff|R|ram~32_combout\);

-- Location: LCCOMB_X39_Y32_N18
\kreader|RingBuff|R|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & ((\kreader|RingBuff|R|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7clkctrl_outclk\,
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datad => \kreader|RingBuff|R|ram~28_combout\,
	combout => \kreader|RingBuff|R|ram~28_combout\);

-- Location: LCCOMB_X40_Y31_N4
\kreader|RingBuff|R|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~33_combout\ = (\kreader|RingBuff|R|ram~32_combout\ & (((\kreader|RingBuff|R|ram~28_combout\) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\kreader|RingBuff|R|ram~32_combout\ & 
-- (\kreader|RingBuff|R|ram~20_combout\ & (\kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|RingBuff|R|ram~20_combout\,
	datab => \kreader|RingBuff|R|ram~32_combout\,
	datac => \kreader|RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \kreader|RingBuff|R|ram~28_combout\,
	combout => \kreader|RingBuff|R|ram~33_combout\);

-- Location: LCCOMB_X40_Y31_N0
\kreader|RingBuff|R|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|RingBuff|R|ram~36_combout\ = (\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\kreader|RingBuff|R|ram~33_combout\))) # (!\kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\kreader|RingBuff|R|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|RingBuff|R|ram~35_combout\,
	datac => \kreader|RingBuff|R|ram~33_combout\,
	datad => \kreader|RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	combout => \kreader|RingBuff|R|ram~36_combout\);

-- Location: FF_X40_Y31_N1
\kreader|OutputBuff|Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kreader|OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\,
	d => \kreader|RingBuff|R|ram~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kreader|OutputBuff|Reg|FFD1|Q~q\);

-- Location: LCCOMB_X45_Y41_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kreader|OutputBuff|Reg|FFD1|Q~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: FF_X45_Y41_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X44_Y39_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X44_Y39_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X44_Y39_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X44_Y39_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X44_Y39_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X44_Y39_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X44_Y39_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X43_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X43_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X43_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X43_Y37_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X43_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X43_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X43_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X43_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X41_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X41_Y38_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\);

-- Location: LCCOMB_X41_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X41_Y37_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X43_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\);

-- Location: FF_X41_Y38_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X41_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\);

-- Location: FF_X41_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: LCCOMB_X41_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~14\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\);

-- Location: FF_X41_Y38_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X41_Y38_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: FF_X41_Y38_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X41_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~9_combout\);

-- Location: LCCOMB_X42_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\);

-- Location: FF_X41_Y38_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X41_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X41_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X43_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X44_Y39_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X43_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X43_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X43_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X43_Y38_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X43_Y38_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X43_Y38_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X43_Y38_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X43_Y38_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X42_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X42_Y38_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X41_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\);

-- Location: LCCOMB_X42_Y38_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\);

-- Location: LCCOMB_X42_Y38_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X41_Y38_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\);

-- Location: LCCOMB_X41_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X41_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X42_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X42_Y38_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X42_Y38_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X42_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X42_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X42_Y38_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X41_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X41_Y38_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X42_Y38_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X41_Y38_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X41_Y38_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X42_Y38_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X42_Y38_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X42_Y38_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X42_Y38_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X43_Y38_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X42_Y38_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X42_Y38_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X42_Y38_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X42_Y38_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X43_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X43_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X42_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X42_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: LCCOMB_X43_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X42_Y37_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X42_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: FF_X42_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X42_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: FF_X42_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X42_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X42_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X42_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X42_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: FF_X42_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X42_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X42_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X43_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X43_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X43_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X42_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X42_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X42_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X43_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X42_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X42_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X42_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X42_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X43_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X43_Y37_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X43_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X44_Y39_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datab => \~GND~combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X44_Y39_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: FF_X44_Y39_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G10
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X45_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: FF_X45_Y41_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LCCOMB_X44_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: FF_X44_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: CLKCTRL_G12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y42_N18
\LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\ = !\LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: LCCOMB_X44_Y42_N10
\LCD|SReceiver|SC|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector0~0_combout\ = (\LCD|SReceiver|SC|CurrentState.STATE_100~q\ & (\LCD|Dispatcher|CurrentState.STATE_10~q\)) # (!\LCD|SReceiver|SC|CurrentState.STATE_100~q\ & 
-- ((\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|SReceiver|SC|CurrentState.STATE_100~q\,
	datac => \LCD|Dispatcher|CurrentState.STATE_10~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	combout => \LCD|SReceiver|SC|Selector0~0_combout\);

-- Location: LCCOMB_X44_Y42_N30
\LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\ = \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ $ (((\LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	datad => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\);

-- Location: FF_X44_Y42_N31
\LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\,
	clrn => \LCD|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X44_Y42_N6
\LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\ = \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ $ (((\LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ & (\LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\ & \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	datab => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	datac => \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	combout => \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\);

-- Location: FF_X44_Y42_N7
\LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\,
	clrn => \LCD|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X44_Y41_N0
\LCD|SReceiver|Sdflag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|Sdflag~0_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ & 
-- (!\LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ & \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\,
	datac => \LCD|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	datad => \LCD|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	combout => \LCD|SReceiver|Sdflag~0_combout\);

-- Location: LCCOMB_X44_Y42_N8
\LCD|SReceiver|SC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector2~0_combout\ = (\LCD|SReceiver|SC|CurrentState.STATE_011~q\ & (((\LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\) # (!\LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\)) # (!\LCD|SReceiver|Sdflag~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|SReceiver|Sdflag~0_combout\,
	datab => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \LCD|SReceiver|SC|CurrentState.STATE_011~q\,
	datad => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \LCD|SReceiver|SC|Selector2~0_combout\);

-- Location: LCCOMB_X44_Y42_N4
\LCD|SReceiver|Sdflag~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|Sdflag~1_combout\ = (\LCD|SReceiver|Sdflag~0_combout\ & (!\LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|SReceiver|Sdflag~0_combout\,
	datab => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \LCD|SReceiver|Sdflag~1_combout\);

-- Location: LCCOMB_X44_Y42_N14
\LCD|SReceiver|SC|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector1~0_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ & 
-- ((\LCD|SReceiver|SC|CurrentState.STATE_001~q\) # ((!\LCD|SReceiver|Sdflag~1_combout\ & \LCD|SReceiver|SC|CurrentState.STATE_010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|SReceiver|SC|CurrentState.STATE_001~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	datac => \LCD|SReceiver|Sdflag~1_combout\,
	datad => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	combout => \LCD|SReceiver|SC|Selector1~0_combout\);

-- Location: LCCOMB_X45_Y42_N16
\LCD|SReceiver|SC|CurrentState.STATE_010~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|CurrentState.STATE_010~feeder_combout\ = \LCD|SReceiver|SC|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD|SReceiver|SC|Selector1~0_combout\,
	combout => \LCD|SReceiver|SC|CurrentState.STATE_010~feeder_combout\);

-- Location: FF_X45_Y42_N17
\LCD|SReceiver|SC|CurrentState.STATE_010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|SReceiver|SC|CurrentState.STATE_010~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|SC|CurrentState.STATE_010~q\);

-- Location: LCCOMB_X44_Y42_N22
\LCD|SReceiver|SC|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector2~1_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ & 
-- ((\LCD|SReceiver|SC|Selector2~0_combout\) # ((\LCD|SReceiver|Sdflag~1_combout\ & \LCD|SReceiver|SC|CurrentState.STATE_010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|SReceiver|SC|Selector2~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	datac => \LCD|SReceiver|Sdflag~1_combout\,
	datad => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	combout => \LCD|SReceiver|SC|Selector2~1_combout\);

-- Location: FF_X44_Y42_N23
\LCD|SReceiver|SC|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|SReceiver|SC|Selector2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|SC|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X44_Y42_N0
\LCD|SReceiver|SC|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector3~3_combout\ = (\LCD|SReceiver|Sdflag~0_combout\ & (\LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & (\LCD|SReceiver|SC|CurrentState.STATE_011~q\ & !\LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|SReceiver|Sdflag~0_combout\,
	datab => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \LCD|SReceiver|SC|CurrentState.STATE_011~q\,
	datad => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \LCD|SReceiver|SC|Selector3~3_combout\);

-- Location: LCCOMB_X46_Y42_N24
\LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ = !\LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: FF_X45_Y41_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: FF_X46_Y42_N25
\LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \LCD|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X44_Y42_N2
\LCD|SReceiver|SC|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector0~1_combout\ = (!\LCD|SReceiver|SC|Selector0~0_combout\ & (((\LCD|SReceiver|SC|CurrentState.STATE_100~q\) # (!\LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\)) # (!\LCD|SReceiver|SC|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|SReceiver|SC|Selector0~0_combout\,
	datab => \LCD|SReceiver|SC|Selector3~3_combout\,
	datac => \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datad => \LCD|SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \LCD|SReceiver|SC|Selector0~1_combout\);

-- Location: FF_X44_Y42_N3
\LCD|SReceiver|SC|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|SReceiver|SC|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|SC|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X44_Y42_N16
\LCD|SReceiver|SC|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|NextState.STATE_001~0_combout\ = (!\LCD|SReceiver|SC|CurrentState.STATE_000~q\ & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|SReceiver|SC|CurrentState.STATE_000~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	combout => \LCD|SReceiver|SC|NextState.STATE_001~0_combout\);

-- Location: FF_X44_Y42_N17
\LCD|SReceiver|SC|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|SReceiver|SC|NextState.STATE_001~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|SC|CurrentState.STATE_001~q\);

-- Location: CLKCTRL_G13
\LCD|SReceiver|SC|CurrentState.STATE_001~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LCD|SReceiver|SC|CurrentState.STATE_001~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LCD|SReceiver|SC|CurrentState.STATE_001~clkctrl_outclk\);

-- Location: FF_X45_Y42_N19
\LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \LCD|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X44_Y42_N28
\LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\ = \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ $ (\LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\);

-- Location: FF_X44_Y42_N29
\LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\,
	clrn => \LCD|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X44_Y42_N26
\LCD|SReceiver|SC|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector3~0_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ & 
-- (\LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & (!\LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & !\LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\,
	datab => \LCD|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \LCD|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datad => \LCD|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \LCD|SReceiver|SC|Selector3~0_combout\);

-- Location: LCCOMB_X44_Y42_N12
\LCD|SReceiver|SC|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector3~1_combout\ = (!\LCD|Dispatcher|CurrentState.STATE_10~q\ & \LCD|SReceiver|SC|CurrentState.STATE_100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|Dispatcher|CurrentState.STATE_10~q\,
	datad => \LCD|SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \LCD|SReceiver|SC|Selector3~1_combout\);

-- Location: LCCOMB_X44_Y42_N18
\LCD|SReceiver|SC|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|SC|Selector3~2_combout\ = (\LCD|SReceiver|SC|Selector3~1_combout\) # ((\LCD|SReceiver|SC|Selector3~0_combout\ & (\LCD|SReceiver|Sdflag~0_combout\ & \LCD|SReceiver|SC|CurrentState.STATE_011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD|SReceiver|SC|Selector3~0_combout\,
	datab => \LCD|SReceiver|Sdflag~0_combout\,
	datac => \LCD|SReceiver|SC|CurrentState.STATE_011~q\,
	datad => \LCD|SReceiver|SC|Selector3~1_combout\,
	combout => \LCD|SReceiver|SC|Selector3~2_combout\);

-- Location: FF_X44_Y42_N19
\LCD|SReceiver|SC|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|SReceiver|SC|Selector3~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|SC|CurrentState.STATE_100~q\);

-- Location: LCCOMB_X44_Y42_N24
\LCD|Dispatcher|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|Dispatcher|Selector0~0_combout\ = (!\LCD|Dispatcher|CurrentState.STATE_10~q\ & ((\LCD|Dispatcher|CurrentState.STATE_00~q\) # (\LCD|SReceiver|SC|CurrentState.STATE_100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Dispatcher|CurrentState.STATE_10~q\,
	datac => \LCD|Dispatcher|CurrentState.STATE_00~q\,
	datad => \LCD|SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \LCD|Dispatcher|Selector0~0_combout\);

-- Location: FF_X44_Y42_N25
\LCD|Dispatcher|CurrentState.STATE_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Dispatcher|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|Dispatcher|CurrentState.STATE_00~q\);

-- Location: LCCOMB_X44_Y42_N20
\LCD|Dispatcher|NextState.STATE_01~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|Dispatcher|NextState.STATE_01~0_combout\ = (!\LCD|Dispatcher|CurrentState.STATE_00~q\ & \LCD|SReceiver|SC|CurrentState.STATE_100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD|Dispatcher|CurrentState.STATE_00~q\,
	datad => \LCD|SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \LCD|Dispatcher|NextState.STATE_01~0_combout\);

-- Location: FF_X44_Y42_N21
\LCD|Dispatcher|CurrentState.STATE_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LCD|Dispatcher|NextState.STATE_01~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|Dispatcher|CurrentState.STATE_01~q\);

-- Location: LCCOMB_X38_Y32_N2
\kreader|kdecode|kscan|dec|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|dec|O~0_combout\ = (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\) # (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \kreader|kdecode|kscan|dec|O~0_combout\);

-- Location: LCCOMB_X38_Y32_N12
\kreader|kdecode|kscan|dec|O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|dec|O~1_combout\ = (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ & !\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \kreader|kdecode|kscan|dec|O~1_combout\);

-- Location: LCCOMB_X38_Y32_N22
\kreader|kdecode|kscan|dec|O~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|dec|O~2_combout\ = (!\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ & \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \kreader|kdecode|kscan|dec|O~2_combout\);

-- Location: LCCOMB_X38_Y32_N0
\kreader|kdecode|kscan|dec|O~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kreader|kdecode|kscan|dec|O~3_combout\ = (\kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ & \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kreader|kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \kreader|kdecode|kscan|dec|O~3_combout\);

-- Location: LCCOMB_X40_Y4_N8
\LCD|SReceiver|ShRegister|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U1|Q~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \LCD|SReceiver|ShRegister|U1|Q~feeder_combout\);

-- Location: FF_X40_Y4_N9
\LCD|SReceiver|ShRegister|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U1|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U1|Q~q\);

-- Location: LCCOMB_X40_Y4_N14
\LCD|SReceiver|ShRegister|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U2|Q~feeder_combout\ = \LCD|SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|SReceiver|ShRegister|U1|Q~q\,
	combout => \LCD|SReceiver|ShRegister|U2|Q~feeder_combout\);

-- Location: FF_X40_Y4_N15
\LCD|SReceiver|ShRegister|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U2|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U2|Q~q\);

-- Location: LCCOMB_X40_Y4_N28
\LCD|SReceiver|ShRegister|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U3|Q~feeder_combout\ = \LCD|SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|SReceiver|ShRegister|U2|Q~q\,
	combout => \LCD|SReceiver|ShRegister|U3|Q~feeder_combout\);

-- Location: FF_X40_Y4_N29
\LCD|SReceiver|ShRegister|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U3|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U3|Q~q\);

-- Location: LCCOMB_X40_Y4_N18
\LCD|SReceiver|ShRegister|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U4|Q~feeder_combout\ = \LCD|SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD|SReceiver|ShRegister|U3|Q~q\,
	combout => \LCD|SReceiver|ShRegister|U4|Q~feeder_combout\);

-- Location: FF_X40_Y4_N19
\LCD|SReceiver|ShRegister|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U4|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U4|Q~q\);

-- Location: LCCOMB_X40_Y4_N0
\LCD|SReceiver|ShRegister|U5|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U5|Q~feeder_combout\ = \LCD|SReceiver|ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD|SReceiver|ShRegister|U4|Q~q\,
	combout => \LCD|SReceiver|ShRegister|U5|Q~feeder_combout\);

-- Location: FF_X40_Y4_N1
\LCD|SReceiver|ShRegister|U5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U5|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U5|Q~q\);

-- Location: LCCOMB_X40_Y4_N30
\LCD|SReceiver|ShRegister|U6|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U6|Q~feeder_combout\ = \LCD|SReceiver|ShRegister|U5|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD|SReceiver|ShRegister|U5|Q~q\,
	combout => \LCD|SReceiver|ShRegister|U6|Q~feeder_combout\);

-- Location: FF_X40_Y4_N31
\LCD|SReceiver|ShRegister|U6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U6|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U6|Q~q\);

-- Location: LCCOMB_X40_Y4_N12
\LCD|SReceiver|ShRegister|U7|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U7|Q~feeder_combout\ = \LCD|SReceiver|ShRegister|U6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD|SReceiver|ShRegister|U6|Q~q\,
	combout => \LCD|SReceiver|ShRegister|U7|Q~feeder_combout\);

-- Location: FF_X40_Y4_N13
\LCD|SReceiver|ShRegister|U7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U7|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U7|Q~q\);

-- Location: LCCOMB_X40_Y4_N10
\LCD|SReceiver|ShRegister|U8|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U8|Q~feeder_combout\ = \LCD|SReceiver|ShRegister|U7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD|SReceiver|ShRegister|U7|Q~q\,
	combout => \LCD|SReceiver|ShRegister|U8|Q~feeder_combout\);

-- Location: FF_X40_Y4_N11
\LCD|SReceiver|ShRegister|U8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U8|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U8|Q~q\);

-- Location: LCCOMB_X40_Y4_N24
\LCD|SReceiver|ShRegister|U9|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LCD|SReceiver|ShRegister|U9|Q~feeder_combout\ = \LCD|SReceiver|ShRegister|U8|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD|SReceiver|ShRegister|U8|Q~q\,
	combout => \LCD|SReceiver|ShRegister|U9|Q~feeder_combout\);

-- Location: FF_X40_Y4_N25
\LCD|SReceiver|ShRegister|U9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \LCD|SReceiver|ShRegister|U9|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \LCD|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCD|SReceiver|ShRegister|U9|Q~q\);

-- Location: LCCOMB_X70_Y44_N12
\Score|dispatcher|CurrentState.STATE_10~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|dispatcher|CurrentState.STATE_10~feeder_combout\ = \Score|dispatcher|CurrentState.STATE_01~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|dispatcher|CurrentState.STATE_01~q\,
	combout => \Score|dispatcher|CurrentState.STATE_10~feeder_combout\);

-- Location: FF_X70_Y44_N13
\Score|dispatcher|CurrentState.STATE_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score|dispatcher|CurrentState.STATE_10~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|dispatcher|CurrentState.STATE_10~q\);

-- Location: LCCOMB_X69_Y44_N8
\Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\ = !\Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: LCCOMB_X45_Y41_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: FF_X45_Y41_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: LCCOMB_X70_Y44_N20
\Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\ = !\Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: FF_X70_Y44_N21
\Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \Score|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X70_Y44_N14
\Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\ = \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ $ (\Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\);

-- Location: FF_X70_Y44_N15
\Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~0_combout\,
	clrn => \Score|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X70_Y44_N24
\Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\ = \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\ $ (((\Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	datad => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\);

-- Location: FF_X70_Y44_N25
\Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~0_combout\,
	clrn => \Score|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X70_Y44_N18
\Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\ = \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ $ (((\Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & (\Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\ & \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datab => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	datac => \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datad => \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	combout => \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\);

-- Location: FF_X70_Y44_N19
\Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~0_combout\,
	clrn => \Score|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X70_Y44_N2
\Score|SReceiver|Spflag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|Spflag~0_combout\ = ((\Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\) # ((\Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\) # (\Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\))) # (!\Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datab => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	datac => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	combout => \Score|SReceiver|Spflag~0_combout\);

-- Location: LCCOMB_X70_Y44_N8
\Score|SReceiver|Sdflag\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|Sdflag~combout\ = (!\Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ & (\Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\ & (\Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datab => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	datac => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datad => \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	combout => \Score|SReceiver|Sdflag~combout\);

-- Location: LCCOMB_X71_Y44_N30
\Score|SReceiver|SC|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|Selector1~0_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ & 
-- ((\Score|SReceiver|SC|CurrentState.STATE_001~q\) # ((!\Score|SReceiver|Sdflag~combout\ & \Score|SReceiver|SC|CurrentState.STATE_010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|Sdflag~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	datac => \Score|SReceiver|SC|CurrentState.STATE_001~q\,
	datad => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	combout => \Score|SReceiver|SC|Selector1~0_combout\);

-- Location: LCCOMB_X71_Y43_N0
\Score|SReceiver|SC|CurrentState.STATE_010~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|CurrentState.STATE_010~feeder_combout\ = \Score|SReceiver|SC|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|SC|Selector1~0_combout\,
	combout => \Score|SReceiver|SC|CurrentState.STATE_010~feeder_combout\);

-- Location: FF_X71_Y43_N1
\Score|SReceiver|SC|CurrentState.STATE_010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score|SReceiver|SC|CurrentState.STATE_010~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|SC|CurrentState.STATE_010~q\);

-- Location: LCCOMB_X71_Y44_N26
\Score|SReceiver|SC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|Selector2~0_combout\ = (\Score|SReceiver|Spflag~0_combout\ & ((\Score|SReceiver|SC|CurrentState.STATE_011~q\) # ((\Score|SReceiver|SC|CurrentState.STATE_010~q\ & \Score|SReceiver|Sdflag~combout\)))) # 
-- (!\Score|SReceiver|Spflag~0_combout\ & (\Score|SReceiver|SC|CurrentState.STATE_010~q\ & ((\Score|SReceiver|Sdflag~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|Spflag~0_combout\,
	datab => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	datac => \Score|SReceiver|SC|CurrentState.STATE_011~q\,
	datad => \Score|SReceiver|Sdflag~combout\,
	combout => \Score|SReceiver|SC|Selector2~0_combout\);

-- Location: LCCOMB_X70_Y44_N22
\Score|SReceiver|SC|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|Selector2~1_combout\ = (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ & 
-- \Score|SReceiver|SC|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	datad => \Score|SReceiver|SC|Selector2~0_combout\,
	combout => \Score|SReceiver|SC|Selector2~1_combout\);

-- Location: FF_X70_Y44_N23
\Score|SReceiver|SC|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score|SReceiver|SC|Selector2~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|SC|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X70_Y44_N30
\Score|SReceiver|SC|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|Selector0~0_combout\ = (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\) # 
-- ((!\Score|SReceiver|Spflag~0_combout\ & (\Score|SReceiver|SC|CurrentState.STATE_011~q\ & \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	datab => \Score|SReceiver|Spflag~0_combout\,
	datac => \Score|SReceiver|SC|CurrentState.STATE_011~q\,
	datad => \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Score|SReceiver|SC|Selector0~0_combout\);

-- Location: LCCOMB_X70_Y44_N4
\Score|SReceiver|SC|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|Selector0~1_combout\ = (\Score|SReceiver|SC|CurrentState.STATE_100~q\ & (!\Score|dispatcher|CurrentState.STATE_10~q\)) # (!\Score|SReceiver|SC|CurrentState.STATE_100~q\ & ((!\Score|SReceiver|SC|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|dispatcher|CurrentState.STATE_10~q\,
	datac => \Score|SReceiver|SC|Selector0~0_combout\,
	datad => \Score|SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \Score|SReceiver|SC|Selector0~1_combout\);

-- Location: FF_X70_Y44_N5
\Score|SReceiver|SC|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score|SReceiver|SC|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|SC|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X70_Y44_N6
\Score|SReceiver|SC|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|NextState.STATE_001~0_combout\ = (!\auto_hub|instrumentation
-- _fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ & !\Score|SReceiver|SC|CurrentState.STATE_000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	datac => \Score|SReceiver|SC|CurrentState.STATE_000~q\,
	combout => \Score|SReceiver|SC|NextState.STATE_001~0_combout\);

-- Location: FF_X70_Y44_N7
\Score|SReceiver|SC|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score|SReceiver|SC|NextState.STATE_001~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|SC|CurrentState.STATE_001~q\);

-- Location: CLKCTRL_G6
\Score|SReceiver|SC|CurrentState.STATE_001~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Score|SReceiver|SC|CurrentState.STATE_001~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Score|SReceiver|SC|CurrentState.STATE_001~clkctrl_outclk\);

-- Location: FF_X69_Y44_N9
\Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \Score|SReceiver|SC|ALT_INV_CurrentState.STATE_001~clkctrl_outclk\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X70_Y44_N0
\Score|SReceiver|SC|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|Selector3~0_combout\ = (!\Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\ & (!\Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\ & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ & !\Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|Pcheck|counter|U1|CC_Reg|FFD1|Q~q\,
	datab => \Score|SReceiver|Counter|U1|CC_Reg|FFD2|Q~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	datad => \Score|SReceiver|Counter|U1|CC_Reg|FFD1|Q~q\,
	combout => \Score|SReceiver|SC|Selector3~0_combout\);

-- Location: LCCOMB_X70_Y44_N26
\Score|SReceiver|SC|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|Selector3~1_combout\ = (\Score|SReceiver|SC|Selector3~0_combout\ & (\Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\ & (\Score|SReceiver|SC|CurrentState.STATE_011~q\ & !\Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|SC|Selector3~0_combout\,
	datab => \Score|SReceiver|Counter|U1|CC_Reg|FFD4|Q~q\,
	datac => \Score|SReceiver|SC|CurrentState.STATE_011~q\,
	datad => \Score|SReceiver|Counter|U1|CC_Reg|FFD3|Q~q\,
	combout => \Score|SReceiver|SC|Selector3~1_combout\);

-- Location: LCCOMB_X70_Y44_N10
\Score|SReceiver|SC|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|SC|Selector3~2_combout\ = (\Score|SReceiver|SC|Selector3~1_combout\) # ((\Score|SReceiver|SC|CurrentState.STATE_100~q\ & !\Score|dispatcher|CurrentState.STATE_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|SC|Selector3~1_combout\,
	datac => \Score|SReceiver|SC|CurrentState.STATE_100~q\,
	datad => \Score|dispatcher|CurrentState.STATE_10~q\,
	combout => \Score|SReceiver|SC|Selector3~2_combout\);

-- Location: FF_X70_Y44_N11
\Score|SReceiver|SC|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score|SReceiver|SC|Selector3~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|SC|CurrentState.STATE_100~q\);

-- Location: LCCOMB_X70_Y44_N28
\Score|dispatcher|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|dispatcher|Selector0~0_combout\ = (!\Score|dispatcher|CurrentState.STATE_10~q\ & ((\Score|dispatcher|CurrentState.STATE_00~q\) # (\Score|SReceiver|SC|CurrentState.STATE_100~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|dispatcher|CurrentState.STATE_10~q\,
	datac => \Score|dispatcher|CurrentState.STATE_00~q\,
	datad => \Score|SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \Score|dispatcher|Selector0~0_combout\);

-- Location: FF_X70_Y44_N29
\Score|dispatcher|CurrentState.STATE_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score|dispatcher|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|dispatcher|CurrentState.STATE_00~q\);

-- Location: LCCOMB_X70_Y44_N16
\Score|dispatcher|NextState.STATE_01~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|dispatcher|NextState.STATE_01~0_combout\ = (!\Score|dispatcher|CurrentState.STATE_00~q\ & \Score|SReceiver|SC|CurrentState.STATE_100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|dispatcher|CurrentState.STATE_00~q\,
	datad => \Score|SReceiver|SC|CurrentState.STATE_100~q\,
	combout => \Score|dispatcher|NextState.STATE_01~0_combout\);

-- Location: FF_X70_Y44_N17
\Score|dispatcher|CurrentState.STATE_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Score|dispatcher|NextState.STATE_01~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|dispatcher|CurrentState.STATE_01~q\);

-- Location: CLKCTRL_G7
\Score|dispatcher|CurrentState.STATE_01~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\);

-- Location: LCCOMB_X71_Y44_N14
\Score|SReceiver|ShRegister|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|ShRegister|U1|Q~feeder_combout\ = \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	combout => \Score|SReceiver|ShRegister|U1|Q~feeder_combout\);

-- Location: FF_X71_Y44_N15
\Score|SReceiver|ShRegister|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|ShRegister|U1|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|ShRegister|U1|Q~q\);

-- Location: LCCOMB_X71_Y44_N22
\Score|SReceiver|ShRegister|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|ShRegister|U2|Q~feeder_combout\ = \Score|SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U1|Q~q\,
	combout => \Score|SReceiver|ShRegister|U2|Q~feeder_combout\);

-- Location: FF_X71_Y44_N23
\Score|SReceiver|ShRegister|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|ShRegister|U2|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|ShRegister|U2|Q~q\);

-- Location: LCCOMB_X71_Y44_N2
\Score|SReceiver|ShRegister|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|ShRegister|U3|Q~feeder_combout\ = \Score|SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U2|Q~q\,
	combout => \Score|SReceiver|ShRegister|U3|Q~feeder_combout\);

-- Location: FF_X71_Y44_N3
\Score|SReceiver|ShRegister|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|ShRegister|U3|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|ShRegister|U3|Q~q\);

-- Location: LCCOMB_X71_Y44_N12
\Score|SReceiver|ShRegister|U4|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Score|SReceiver|ShRegister|U4|Q~feeder_combout\ = \Score|SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U3|Q~q\,
	combout => \Score|SReceiver|ShRegister|U4|Q~feeder_combout\);

-- Location: FF_X71_Y44_N13
\Score|SReceiver|ShRegister|U4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \Score|SReceiver|ShRegister|U4|Q~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|ShRegister|U4|Q~q\);

-- Location: FF_X71_Y44_N7
\Score|SReceiver|ShRegister|U5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \Score|SReceiver|ShRegister|U4|Q~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|ShRegister|U5|Q~q\);

-- Location: FF_X71_Y44_N25
\Score|SReceiver|ShRegister|U6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \Score|SReceiver|ShRegister|U5|Q~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|ShRegister|U6|Q~q\);

-- Location: FF_X71_Y44_N19
\Score|SReceiver|ShRegister|U7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	asdata => \Score|SReceiver|ShRegister|U6|Q~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \Score|SReceiver|SC|CurrentState.STATE_010~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Score|SReceiver|ShRegister|U7|Q~q\);

-- Location: LCCOMB_X71_Y44_N28
\SDisplay|clear_reg|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|clear_reg|Q~0_combout\ = (\Score|SReceiver|ShRegister|U5|Q~q\ & (\Score|SReceiver|ShRegister|U6|Q~q\ & \Score|SReceiver|ShRegister|U7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|ShRegister|U5|Q~q\,
	datab => \Score|SReceiver|ShRegister|U6|Q~q\,
	datad => \Score|SReceiver|ShRegister|U7|Q~q\,
	combout => \SDisplay|clear_reg|Q~0_combout\);

-- Location: LCCOMB_X71_Y44_N20
\SDisplay|clear_reg|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|clear_reg|Q~1_combout\ = (\SDisplay|clear_reg|Q~0_combout\ & (!\Score|SReceiver|ShRegister|U4|Q~q\)) # (!\SDisplay|clear_reg|Q~0_combout\ & ((\SDisplay|clear_reg|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|SReceiver|ShRegister|U4|Q~q\,
	datac => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|clear_reg|Q~0_combout\,
	combout => \SDisplay|clear_reg|Q~1_combout\);

-- Location: FF_X71_Y44_N21
\SDisplay|clear_reg|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|clear_reg|Q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|clear_reg|Q~q\);

-- Location: LCCOMB_X74_Y46_N24
\SDisplay|circuit_gen:0:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:in_reg|u1|Q~0_combout\ = !\Score|SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U3|Q~q\,
	combout => \SDisplay|circuit_gen:0:in_reg|u1|Q~0_combout\);

-- Location: LCCOMB_X71_Y44_N16
\SDisplay|decoder|dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|decoder|dout\(0) = (!\Score|SReceiver|ShRegister|U5|Q~q\ & (!\Score|SReceiver|ShRegister|U6|Q~q\ & !\Score|SReceiver|ShRegister|U7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|ShRegister|U5|Q~q\,
	datab => \Score|SReceiver|ShRegister|U6|Q~q\,
	datad => \Score|SReceiver|ShRegister|U7|Q~q\,
	combout => \SDisplay|decoder|dout\(0));

-- Location: FF_X74_Y46_N25
\SDisplay|circuit_gen:0:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:0:in_reg|u1|Q~0_combout\,
	ena => \SDisplay|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:0:in_reg|u1|Q~q\);

-- Location: LCCOMB_X71_Y44_N8
\SDisplay|decoder|dout[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|decoder|dout[6]~0_combout\ = (\Score|SReceiver|ShRegister|U5|Q~q\ & (\Score|SReceiver|ShRegister|U6|Q~q\ & !\Score|SReceiver|ShRegister|U7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|ShRegister|U5|Q~q\,
	datab => \Score|SReceiver|ShRegister|U6|Q~q\,
	datad => \Score|SReceiver|ShRegister|U7|Q~q\,
	combout => \SDisplay|decoder|dout[6]~0_combout\);

-- Location: FF_X71_Y50_N11
\SDisplay|circuit_gen:0:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:0:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:0:out_reg|u1|Q~q\);

-- Location: LCCOMB_X71_Y50_N2
\SDisplay|circuit_gen:0:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:in_reg|u2|Q~0_combout\ = !\Score|SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U2|Q~q\,
	combout => \SDisplay|circuit_gen:0:in_reg|u2|Q~0_combout\);

-- Location: FF_X71_Y50_N3
\SDisplay|circuit_gen:0:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:0:in_reg|u2|Q~0_combout\,
	ena => \SDisplay|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:0:in_reg|u2|Q~q\);

-- Location: FF_X71_Y50_N17
\SDisplay|circuit_gen:0:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:0:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:0:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y46_N18
\SDisplay|circuit_gen:0:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:in_reg|u0|Q~0_combout\ = !\Score|SReceiver|ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U4|Q~q\,
	combout => \SDisplay|circuit_gen:0:in_reg|u0|Q~0_combout\);

-- Location: FF_X74_Y46_N19
\SDisplay|circuit_gen:0:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:0:in_reg|u0|Q~0_combout\,
	ena => \SDisplay|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:0:in_reg|u0|Q~q\);

-- Location: FF_X71_Y50_N1
\SDisplay|circuit_gen:0:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:0:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:0:out_reg|u0|Q~q\);

-- Location: LCCOMB_X71_Y50_N4
\SDisplay|circuit_gen:0:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:in_reg|u3|Q~0_combout\ = !\Score|SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U1|Q~q\,
	combout => \SDisplay|circuit_gen:0:in_reg|u3|Q~0_combout\);

-- Location: FF_X71_Y50_N5
\SDisplay|circuit_gen:0:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:0:in_reg|u3|Q~0_combout\,
	ena => \SDisplay|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:0:in_reg|u3|Q~q\);

-- Location: FF_X71_Y50_N21
\SDisplay|circuit_gen:0:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:0:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:0:out_reg|u3|Q~q\);

-- Location: LCCOMB_X71_Y50_N26
\SDisplay|circuit_gen:0:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ = (\SDisplay|circuit_gen:0:out_reg|u3|Q~q\ & (\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:0:out_reg|u2|Q~q\ $ (\SDisplay|circuit_gen:0:out_reg|u0|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:0:out_reg|u3|Q~q\ & (((!\SDisplay|circuit_gen:0:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:0:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:0:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:0:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X71_Y50_N28
\SDisplay|circuit_gen:0:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ = (\SDisplay|circuit_gen:0:hex_digit|Ndout[0]~0_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:0:hex_digit|Ndout[0]~0_combout\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X71_Y50_N22
\SDisplay|circuit_gen:0:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ = (\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:0:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:0:out_reg|u3|Q~q\) # (!\SDisplay|circuit_gen:0:out_reg|u0|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:0:out_reg|u2|Q~q\)) # (!\SDisplay|circuit_gen:0:out_reg|u0|Q~q\ & ((!\SDisplay|circuit_gen:0:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:0:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:0:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:0:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X71_Y50_N30
\SDisplay|circuit_gen:0:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ = (\SDisplay|circuit_gen:0:hex_digit|Ndout[1]~2_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:0:hex_digit|Ndout[1]~2_combout\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X71_Y50_N12
\SDisplay|circuit_gen:0:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ = (\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u2|Q~q\) # ((\SDisplay|circuit_gen:0:out_reg|u3|Q~q\)))) # (!\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & 
-- ((\SDisplay|circuit_gen:0:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:0:out_reg|u2|Q~q\)) # (!\SDisplay|circuit_gen:0:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:0:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:0:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:0:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X71_Y50_N18
\SDisplay|circuit_gen:0:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ = (!\SDisplay|circuit_gen:0:hex_digit|Ndout[2]~4_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:0:hex_digit|Ndout[2]~4_combout\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X71_Y50_N20
\SDisplay|circuit_gen:0:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ = (\SDisplay|circuit_gen:0:out_reg|u2|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:0:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & 
-- ((!\SDisplay|circuit_gen:0:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:0:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:0:out_reg|u0|Q~q\ $ (((!\SDisplay|circuit_gen:0:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:0:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X71_Y50_N6
\SDisplay|circuit_gen:0:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ = (\SDisplay|circuit_gen:0:hex_digit|Ndout[3]~6_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:0:hex_digit|Ndout[3]~6_combout\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X71_Y50_N16
\SDisplay|circuit_gen:0:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ = (\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u2|Q~q\ & (!\SDisplay|circuit_gen:0:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:0:out_reg|u2|Q~q\ & 
-- ((\SDisplay|circuit_gen:0:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & (((!\SDisplay|circuit_gen:0:out_reg|u3|Q~q\)) # (!\SDisplay|circuit_gen:0:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:0:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:0:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:0:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X71_Y50_N8
\SDisplay|circuit_gen:0:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ = (\SDisplay|circuit_gen:0:hex_digit|Ndout[4]~8_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:0:hex_digit|Ndout[4]~8_combout\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X71_Y50_N10
\SDisplay|circuit_gen:0:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ = (\SDisplay|circuit_gen:0:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u2|Q~q\) # (!\SDisplay|circuit_gen:0:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:0:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u2|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u3|Q~q\))) # (!\SDisplay|circuit_gen:0:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:0:out_reg|u3|Q~q\) # 
-- (!\SDisplay|circuit_gen:0:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:0:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:0:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:0:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:0:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X71_Y50_N24
\SDisplay|circuit_gen:0:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ = (\SDisplay|circuit_gen:0:hex_digit|Ndout[5]~10_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:0:hex_digit|Ndout[5]~10_combout\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X71_Y50_N0
\SDisplay|circuit_gen:0:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ = (\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:0:out_reg|u3|Q~q\ $ (((\SDisplay|circuit_gen:0:out_reg|u2|Q~q\))))) # (!\SDisplay|circuit_gen:0:out_reg|u1|Q~q\ & 
-- (\SDisplay|circuit_gen:0:out_reg|u3|Q~q\ & ((\SDisplay|circuit_gen:0:out_reg|u0|Q~q\) # (\SDisplay|circuit_gen:0:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:0:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:0:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:0:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:0:out_reg|u2|Q~q\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X71_Y50_N14
\SDisplay|circuit_gen:0:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ = (!\SDisplay|circuit_gen:0:hex_digit|Ndout[6]~12_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:0:hex_digit|Ndout[6]~12_combout\,
	combout => \SDisplay|circuit_gen:0:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X72_Y48_N8
\SDisplay|circuit_gen:1:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:in_reg|u0|Q~0_combout\ = !\Score|SReceiver|ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U4|Q~q\,
	combout => \SDisplay|circuit_gen:1:in_reg|u0|Q~0_combout\);

-- Location: LCCOMB_X71_Y44_N4
\SDisplay|decoder|dout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|decoder|dout[1]~1_combout\ = (!\Score|SReceiver|ShRegister|U5|Q~q\ & (!\Score|SReceiver|ShRegister|U6|Q~q\ & \Score|SReceiver|ShRegister|U7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|ShRegister|U5|Q~q\,
	datab => \Score|SReceiver|ShRegister|U6|Q~q\,
	datad => \Score|SReceiver|ShRegister|U7|Q~q\,
	combout => \SDisplay|decoder|dout[1]~1_combout\);

-- Location: FF_X72_Y48_N9
\SDisplay|circuit_gen:1:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:1:in_reg|u0|Q~0_combout\,
	ena => \SDisplay|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:1:in_reg|u0|Q~q\);

-- Location: FF_X72_Y48_N11
\SDisplay|circuit_gen:1:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:1:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:1:out_reg|u0|Q~q\);

-- Location: LCCOMB_X72_Y48_N4
\SDisplay|circuit_gen:1:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:in_reg|u2|Q~0_combout\ = !\Score|SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U2|Q~q\,
	combout => \SDisplay|circuit_gen:1:in_reg|u2|Q~0_combout\);

-- Location: FF_X72_Y48_N5
\SDisplay|circuit_gen:1:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:1:in_reg|u2|Q~0_combout\,
	ena => \SDisplay|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:1:in_reg|u2|Q~q\);

-- Location: FF_X72_Y48_N21
\SDisplay|circuit_gen:1:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:1:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:1:out_reg|u2|Q~q\);

-- Location: LCCOMB_X72_Y48_N12
\SDisplay|circuit_gen:1:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:in_reg|u3|Q~0_combout\ = !\Score|SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U1|Q~q\,
	combout => \SDisplay|circuit_gen:1:in_reg|u3|Q~0_combout\);

-- Location: FF_X72_Y48_N13
\SDisplay|circuit_gen:1:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:1:in_reg|u3|Q~0_combout\,
	ena => \SDisplay|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:1:in_reg|u3|Q~q\);

-- Location: FF_X72_Y48_N31
\SDisplay|circuit_gen:1:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:1:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:1:out_reg|u3|Q~q\);

-- Location: LCCOMB_X72_Y48_N14
\SDisplay|circuit_gen:1:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:in_reg|u1|Q~0_combout\ = !\Score|SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U3|Q~q\,
	combout => \SDisplay|circuit_gen:1:in_reg|u1|Q~0_combout\);

-- Location: FF_X72_Y48_N15
\SDisplay|circuit_gen:1:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:1:in_reg|u1|Q~0_combout\,
	ena => \SDisplay|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:1:in_reg|u1|Q~q\);

-- Location: FF_X72_Y48_N27
\SDisplay|circuit_gen:1:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:1:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:1:out_reg|u1|Q~q\);

-- Location: LCCOMB_X72_Y48_N22
\SDisplay|circuit_gen:1:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ = (\SDisplay|circuit_gen:1:out_reg|u3|Q~q\ & (\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:1:out_reg|u0|Q~q\ $ (\SDisplay|circuit_gen:1:out_reg|u2|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:1:out_reg|u3|Q~q\ & (((!\SDisplay|circuit_gen:1:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:1:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:1:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:1:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X72_Y48_N2
\SDisplay|circuit_gen:1:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ = (\SDisplay|circuit_gen:1:hex_digit|Ndout[0]~0_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:1:hex_digit|Ndout[0]~0_combout\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X72_Y48_N24
\SDisplay|circuit_gen:1:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ = (\SDisplay|circuit_gen:1:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:1:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:1:out_reg|u1|Q~q\) # (!\SDisplay|circuit_gen:1:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:1:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:1:out_reg|u2|Q~q\)) # (!\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & ((!\SDisplay|circuit_gen:1:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:1:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:1:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:1:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X72_Y48_N0
\SDisplay|circuit_gen:1:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ = (\SDisplay|circuit_gen:1:hex_digit|Ndout[1]~2_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:1:hex_digit|Ndout[1]~2_combout\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X72_Y48_N28
\SDisplay|circuit_gen:1:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ = (\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & (((\SDisplay|circuit_gen:1:out_reg|u2|Q~q\) # (\SDisplay|circuit_gen:1:out_reg|u3|Q~q\)))) # (!\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & 
-- ((\SDisplay|circuit_gen:1:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:1:out_reg|u2|Q~q\)) # (!\SDisplay|circuit_gen:1:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:1:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:1:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:1:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:1:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X72_Y48_N18
\SDisplay|circuit_gen:1:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ = (!\SDisplay|circuit_gen:1:hex_digit|Ndout[2]~4_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:1:hex_digit|Ndout[2]~4_combout\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X72_Y48_N30
\SDisplay|circuit_gen:1:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ = (\SDisplay|circuit_gen:1:out_reg|u2|Q~q\ & ((\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:1:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & 
-- ((!\SDisplay|circuit_gen:1:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:1:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:1:out_reg|u0|Q~q\ $ (((!\SDisplay|circuit_gen:1:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:1:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:1:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:1:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:1:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X71_Y48_N8
\SDisplay|circuit_gen:1:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ = (\SDisplay|circuit_gen:1:hex_digit|Ndout[3]~6_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:1:hex_digit|Ndout[3]~6_combout\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X72_Y48_N20
\SDisplay|circuit_gen:1:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ = (\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:1:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:1:out_reg|u0|Q~q\))) # (!\SDisplay|circuit_gen:1:out_reg|u2|Q~q\ & 
-- (\SDisplay|circuit_gen:1:out_reg|u3|Q~q\)))) # (!\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & (((!\SDisplay|circuit_gen:1:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:1:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:1:out_reg|u3|Q~q\,
	datab => \SDisplay|circuit_gen:1:out_reg|u1|Q~q\,
	datac => \SDisplay|circuit_gen:1:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:1:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X71_Y48_N10
\SDisplay|circuit_gen:1:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ = (\SDisplay|circuit_gen:1:hex_digit|Ndout[4]~8_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:1:hex_digit|Ndout[4]~8_combout\,
	datac => \SDisplay|clear_reg|Q~q\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X72_Y48_N26
\SDisplay|circuit_gen:1:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ = (\SDisplay|circuit_gen:1:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:1:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:1:out_reg|u2|Q~q\) # (!\SDisplay|circuit_gen:1:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:1:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:1:out_reg|u3|Q~q\ & ((\SDisplay|circuit_gen:1:out_reg|u2|Q~q\) # (!\SDisplay|circuit_gen:1:out_reg|u1|Q~q\))) # (!\SDisplay|circuit_gen:1:out_reg|u3|Q~q\ & 
-- (!\SDisplay|circuit_gen:1:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:1:out_reg|u3|Q~q\,
	datab => \SDisplay|circuit_gen:1:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:1:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:1:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X72_Y48_N16
\SDisplay|circuit_gen:1:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ = (\SDisplay|circuit_gen:1:hex_digit|Ndout[5]~10_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:1:hex_digit|Ndout[5]~10_combout\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X72_Y48_N10
\SDisplay|circuit_gen:1:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ = (\SDisplay|circuit_gen:1:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:1:out_reg|u3|Q~q\ $ (((\SDisplay|circuit_gen:1:out_reg|u1|Q~q\))))) # (!\SDisplay|circuit_gen:1:out_reg|u2|Q~q\ & 
-- (\SDisplay|circuit_gen:1:out_reg|u3|Q~q\ & ((\SDisplay|circuit_gen:1:out_reg|u0|Q~q\) # (\SDisplay|circuit_gen:1:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:1:out_reg|u3|Q~q\,
	datab => \SDisplay|circuit_gen:1:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:1:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:1:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X72_Y48_N6
\SDisplay|circuit_gen:1:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ = (!\SDisplay|circuit_gen:1:hex_digit|Ndout[6]~12_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:1:hex_digit|Ndout[6]~12_combout\,
	combout => \SDisplay|circuit_gen:1:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y44_N22
\SDisplay|circuit_gen:2:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:in_reg|u0|Q~0_combout\ = !\Score|SReceiver|ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U4|Q~q\,
	combout => \SDisplay|circuit_gen:2:in_reg|u0|Q~0_combout\);

-- Location: LCCOMB_X71_Y44_N10
\SDisplay|decoder|dout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|decoder|dout[2]~2_combout\ = (!\Score|SReceiver|ShRegister|U5|Q~q\ & (\Score|SReceiver|ShRegister|U6|Q~q\ & !\Score|SReceiver|ShRegister|U7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|ShRegister|U5|Q~q\,
	datab => \Score|SReceiver|ShRegister|U6|Q~q\,
	datad => \Score|SReceiver|ShRegister|U7|Q~q\,
	combout => \SDisplay|decoder|dout[2]~2_combout\);

-- Location: FF_X74_Y44_N23
\SDisplay|circuit_gen:2:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:2:in_reg|u0|Q~0_combout\,
	ena => \SDisplay|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:2:in_reg|u0|Q~q\);

-- Location: FF_X71_Y48_N3
\SDisplay|circuit_gen:2:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:2:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:2:out_reg|u0|Q~q\);

-- Location: LCCOMB_X74_Y44_N12
\SDisplay|circuit_gen:2:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:in_reg|u1|Q~0_combout\ = !\Score|SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U3|Q~q\,
	combout => \SDisplay|circuit_gen:2:in_reg|u1|Q~0_combout\);

-- Location: FF_X74_Y44_N13
\SDisplay|circuit_gen:2:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:2:in_reg|u1|Q~0_combout\,
	ena => \SDisplay|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:2:in_reg|u1|Q~q\);

-- Location: FF_X71_Y48_N25
\SDisplay|circuit_gen:2:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:2:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:2:out_reg|u1|Q~q\);

-- Location: LCCOMB_X74_Y44_N2
\SDisplay|circuit_gen:2:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:in_reg|u2|Q~0_combout\ = !\Score|SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U2|Q~q\,
	combout => \SDisplay|circuit_gen:2:in_reg|u2|Q~0_combout\);

-- Location: FF_X74_Y44_N3
\SDisplay|circuit_gen:2:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:2:in_reg|u2|Q~0_combout\,
	ena => \SDisplay|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:2:in_reg|u2|Q~q\);

-- Location: FF_X71_Y48_N15
\SDisplay|circuit_gen:2:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:2:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:2:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y44_N8
\SDisplay|circuit_gen:2:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:in_reg|u3|Q~0_combout\ = !\Score|SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U1|Q~q\,
	combout => \SDisplay|circuit_gen:2:in_reg|u3|Q~0_combout\);

-- Location: FF_X74_Y44_N9
\SDisplay|circuit_gen:2:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:2:in_reg|u3|Q~0_combout\,
	ena => \SDisplay|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:2:in_reg|u3|Q~q\);

-- Location: FF_X71_Y48_N13
\SDisplay|circuit_gen:2:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:2:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:2:out_reg|u3|Q~q\);

-- Location: LCCOMB_X71_Y48_N4
\SDisplay|circuit_gen:2:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ = (\SDisplay|circuit_gen:2:out_reg|u3|Q~q\ & (\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:2:out_reg|u0|Q~q\ $ (\SDisplay|circuit_gen:2:out_reg|u2|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:2:out_reg|u3|Q~q\ & (((!\SDisplay|circuit_gen:2:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:2:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:2:out_reg|u1|Q~q\,
	datac => \SDisplay|circuit_gen:2:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X71_Y48_N6
\SDisplay|circuit_gen:2:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ = (\SDisplay|circuit_gen:2:hex_digit|Ndout[0]~0_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|circuit_gen:2:hex_digit|Ndout[0]~0_combout\,
	datac => \SDisplay|clear_reg|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X71_Y48_N0
\SDisplay|circuit_gen:2:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ = (\SDisplay|circuit_gen:2:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:2:out_reg|u3|Q~q\) # (!\SDisplay|circuit_gen:2:out_reg|u1|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:2:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:2:out_reg|u2|Q~q\)) # (!\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & ((!\SDisplay|circuit_gen:2:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:2:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:2:out_reg|u1|Q~q\,
	datac => \SDisplay|circuit_gen:2:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X71_Y48_N18
\SDisplay|circuit_gen:2:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ = (\SDisplay|circuit_gen:2:hex_digit|Ndout[1]~2_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:2:hex_digit|Ndout[1]~2_combout\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X71_Y48_N28
\SDisplay|circuit_gen:2:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ = (\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & (((\SDisplay|circuit_gen:2:out_reg|u2|Q~q\) # (\SDisplay|circuit_gen:2:out_reg|u3|Q~q\)))) # (!\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & 
-- ((\SDisplay|circuit_gen:2:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:2:out_reg|u2|Q~q\)) # (!\SDisplay|circuit_gen:2:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:2:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:2:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:2:out_reg|u1|Q~q\,
	datac => \SDisplay|circuit_gen:2:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X71_Y48_N22
\SDisplay|circuit_gen:2:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ = (!\SDisplay|circuit_gen:2:hex_digit|Ndout[2]~4_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:2:hex_digit|Ndout[2]~4_combout\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X71_Y48_N12
\SDisplay|circuit_gen:2:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ = (\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & ((\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:2:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & 
-- ((!\SDisplay|circuit_gen:2:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:2:out_reg|u0|Q~q\ $ (((!\SDisplay|circuit_gen:2:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:2:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:2:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:2:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:2:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X71_Y48_N16
\SDisplay|circuit_gen:2:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ = (\SDisplay|circuit_gen:2:hex_digit|Ndout[3]~6_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|circuit_gen:2:hex_digit|Ndout[3]~6_combout\,
	datac => \SDisplay|clear_reg|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X71_Y48_N14
\SDisplay|circuit_gen:2:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ = (\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & (!\SDisplay|circuit_gen:2:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & 
-- ((\SDisplay|circuit_gen:2:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & (((!\SDisplay|circuit_gen:2:out_reg|u3|Q~q\)) # (!\SDisplay|circuit_gen:2:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:2:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:2:out_reg|u1|Q~q\,
	datac => \SDisplay|circuit_gen:2:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X71_Y48_N26
\SDisplay|circuit_gen:2:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ = (\SDisplay|circuit_gen:2:hex_digit|Ndout[4]~8_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:2:hex_digit|Ndout[4]~8_combout\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X71_Y48_N24
\SDisplay|circuit_gen:2:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ = (\SDisplay|circuit_gen:2:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:2:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:2:out_reg|u2|Q~q\) # (!\SDisplay|circuit_gen:2:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:2:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & ((\SDisplay|circuit_gen:2:out_reg|u3|Q~q\))) # (!\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:2:out_reg|u3|Q~q\) # 
-- (!\SDisplay|circuit_gen:2:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:2:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:2:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:2:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:2:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X71_Y48_N20
\SDisplay|circuit_gen:2:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ = (\SDisplay|circuit_gen:2:hex_digit|Ndout[5]~10_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:2:hex_digit|Ndout[5]~10_combout\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X71_Y48_N2
\SDisplay|circuit_gen:2:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ = (\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:2:out_reg|u3|Q~q\ $ (((\SDisplay|circuit_gen:2:out_reg|u1|Q~q\))))) # (!\SDisplay|circuit_gen:2:out_reg|u2|Q~q\ & 
-- (\SDisplay|circuit_gen:2:out_reg|u3|Q~q\ & ((\SDisplay|circuit_gen:2:out_reg|u0|Q~q\) # (\SDisplay|circuit_gen:2:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:2:out_reg|u3|Q~q\,
	datab => \SDisplay|circuit_gen:2:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:2:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:2:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X71_Y48_N30
\SDisplay|circuit_gen:2:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ = (!\SDisplay|circuit_gen:2:hex_digit|Ndout[6]~12_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:2:hex_digit|Ndout[6]~12_combout\,
	combout => \SDisplay|circuit_gen:2:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X77_Y41_N20
\SDisplay|circuit_gen:3:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:in_reg|u0|Q~0_combout\ = !\Score|SReceiver|ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U4|Q~q\,
	combout => \SDisplay|circuit_gen:3:in_reg|u0|Q~0_combout\);

-- Location: LCCOMB_X71_Y44_N6
\SDisplay|decoder|dout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|decoder|dout[3]~3_combout\ = (\Score|SReceiver|ShRegister|U6|Q~q\ & (!\Score|SReceiver|ShRegister|U5|Q~q\ & \Score|SReceiver|ShRegister|U7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Score|SReceiver|ShRegister|U6|Q~q\,
	datac => \Score|SReceiver|ShRegister|U5|Q~q\,
	datad => \Score|SReceiver|ShRegister|U7|Q~q\,
	combout => \SDisplay|decoder|dout[3]~3_combout\);

-- Location: FF_X77_Y41_N21
\SDisplay|circuit_gen:3:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:3:in_reg|u0|Q~0_combout\,
	ena => \SDisplay|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:3:in_reg|u0|Q~q\);

-- Location: FF_X77_Y41_N9
\SDisplay|circuit_gen:3:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:3:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:3:out_reg|u0|Q~q\);

-- Location: LCCOMB_X77_Y41_N16
\SDisplay|circuit_gen:3:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:in_reg|u3|Q~0_combout\ = !\Score|SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U1|Q~q\,
	combout => \SDisplay|circuit_gen:3:in_reg|u3|Q~0_combout\);

-- Location: FF_X77_Y41_N17
\SDisplay|circuit_gen:3:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:3:in_reg|u3|Q~0_combout\,
	ena => \SDisplay|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:3:in_reg|u3|Q~q\);

-- Location: FF_X77_Y41_N3
\SDisplay|circuit_gen:3:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:3:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:3:out_reg|u3|Q~q\);

-- Location: LCCOMB_X74_Y44_N24
\SDisplay|circuit_gen:3:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:in_reg|u2|Q~0_combout\ = !\Score|SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U2|Q~q\,
	combout => \SDisplay|circuit_gen:3:in_reg|u2|Q~0_combout\);

-- Location: FF_X74_Y44_N25
\SDisplay|circuit_gen:3:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:3:in_reg|u2|Q~0_combout\,
	ena => \SDisplay|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:3:in_reg|u2|Q~q\);

-- Location: FF_X77_Y41_N25
\SDisplay|circuit_gen:3:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:3:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:3:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y44_N10
\SDisplay|circuit_gen:3:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:in_reg|u1|Q~0_combout\ = !\Score|SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U3|Q~q\,
	combout => \SDisplay|circuit_gen:3:in_reg|u1|Q~0_combout\);

-- Location: FF_X74_Y44_N11
\SDisplay|circuit_gen:3:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:3:in_reg|u1|Q~0_combout\,
	ena => \SDisplay|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:3:in_reg|u1|Q~q\);

-- Location: FF_X77_Y41_N19
\SDisplay|circuit_gen:3:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:3:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:3:out_reg|u1|Q~q\);

-- Location: LCCOMB_X77_Y41_N26
\SDisplay|circuit_gen:3:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ = (\SDisplay|circuit_gen:3:out_reg|u3|Q~q\ & (\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:3:out_reg|u0|Q~q\ $ (\SDisplay|circuit_gen:3:out_reg|u2|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:3:out_reg|u3|Q~q\ & (((!\SDisplay|circuit_gen:3:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:3:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:3:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:3:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X77_Y41_N30
\SDisplay|circuit_gen:3:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ = (\SDisplay|circuit_gen:3:hex_digit|Ndout[0]~0_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:3:hex_digit|Ndout[0]~0_combout\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X77_Y41_N4
\SDisplay|circuit_gen:3:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ = (\SDisplay|circuit_gen:3:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:3:out_reg|u1|Q~q\) # (!\SDisplay|circuit_gen:3:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:3:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & ((!\SDisplay|circuit_gen:3:out_reg|u2|Q~q\))) # (!\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:3:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:3:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:3:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:3:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X77_Y41_N28
\SDisplay|circuit_gen:3:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ = (\SDisplay|circuit_gen:3:hex_digit|Ndout[1]~2_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:3:hex_digit|Ndout[1]~2_combout\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X77_Y41_N10
\SDisplay|circuit_gen:3:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ = (\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & (((\SDisplay|circuit_gen:3:out_reg|u3|Q~q\) # (\SDisplay|circuit_gen:3:out_reg|u2|Q~q\)))) # (!\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & 
-- ((\SDisplay|circuit_gen:3:out_reg|u0|Q~q\ & ((!\SDisplay|circuit_gen:3:out_reg|u2|Q~q\))) # (!\SDisplay|circuit_gen:3:out_reg|u0|Q~q\ & (\SDisplay|circuit_gen:3:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:3:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:3:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:3:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X77_Y41_N6
\SDisplay|circuit_gen:3:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ = (!\SDisplay|circuit_gen:3:hex_digit|Ndout[2]~4_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:3:hex_digit|Ndout[2]~4_combout\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X77_Y41_N2
\SDisplay|circuit_gen:3:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ = (\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & ((\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:3:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & 
-- ((!\SDisplay|circuit_gen:3:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:3:out_reg|u0|Q~q\ $ (((!\SDisplay|circuit_gen:3:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \SDisplay|circuit_gen:3:out_reg|u0|Q~q\,
	datac => \SDisplay|circuit_gen:3:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X77_Y41_N22
\SDisplay|circuit_gen:3:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ = (\SDisplay|circuit_gen:3:hex_digit|Ndout[3]~6_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:3:hex_digit|Ndout[3]~6_combout\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X77_Y41_N24
\SDisplay|circuit_gen:3:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ = (\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & (!\SDisplay|circuit_gen:3:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & 
-- ((\SDisplay|circuit_gen:3:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & (((!\SDisplay|circuit_gen:3:out_reg|u3|Q~q\)) # (!\SDisplay|circuit_gen:3:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:3:out_reg|u0|Q~q\,
	datab => \SDisplay|circuit_gen:3:out_reg|u1|Q~q\,
	datac => \SDisplay|circuit_gen:3:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:3:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X77_Y41_N14
\SDisplay|circuit_gen:3:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ = (\SDisplay|circuit_gen:3:hex_digit|Ndout[4]~8_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:3:hex_digit|Ndout[4]~8_combout\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X77_Y41_N18
\SDisplay|circuit_gen:3:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ = (\SDisplay|circuit_gen:3:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:3:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:3:out_reg|u2|Q~q\) # (!\SDisplay|circuit_gen:3:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:3:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & ((\SDisplay|circuit_gen:3:out_reg|u3|Q~q\))) # (!\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:3:out_reg|u3|Q~q\) # 
-- (!\SDisplay|circuit_gen:3:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \SDisplay|circuit_gen:3:out_reg|u0|Q~q\,
	datac => \SDisplay|circuit_gen:3:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:3:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X77_Y41_N12
\SDisplay|circuit_gen:3:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ = (\SDisplay|circuit_gen:3:hex_digit|Ndout[5]~10_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:3:hex_digit|Ndout[5]~10_combout\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X77_Y41_N8
\SDisplay|circuit_gen:3:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ = (\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:3:out_reg|u3|Q~q\ $ (((\SDisplay|circuit_gen:3:out_reg|u1|Q~q\))))) # (!\SDisplay|circuit_gen:3:out_reg|u2|Q~q\ & 
-- (\SDisplay|circuit_gen:3:out_reg|u3|Q~q\ & ((\SDisplay|circuit_gen:3:out_reg|u0|Q~q\) # (\SDisplay|circuit_gen:3:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:3:out_reg|u2|Q~q\,
	datab => \SDisplay|circuit_gen:3:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:3:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:3:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X77_Y41_N0
\SDisplay|circuit_gen:3:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ = (!\SDisplay|circuit_gen:3:hex_digit|Ndout[6]~12_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:3:hex_digit|Ndout[6]~12_combout\,
	combout => \SDisplay|circuit_gen:3:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X77_Y42_N24
\SDisplay|circuit_gen:4:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:in_reg|u3|Q~0_combout\ = !\Score|SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U1|Q~q\,
	combout => \SDisplay|circuit_gen:4:in_reg|u3|Q~0_combout\);

-- Location: LCCOMB_X71_Y44_N24
\SDisplay|decoder|dout[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|decoder|dout[4]~4_combout\ = (\Score|SReceiver|ShRegister|U5|Q~q\ & (!\Score|SReceiver|ShRegister|U6|Q~q\ & !\Score|SReceiver|ShRegister|U7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|ShRegister|U5|Q~q\,
	datac => \Score|SReceiver|ShRegister|U6|Q~q\,
	datad => \Score|SReceiver|ShRegister|U7|Q~q\,
	combout => \SDisplay|decoder|dout[4]~4_combout\);

-- Location: FF_X77_Y42_N25
\SDisplay|circuit_gen:4:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:4:in_reg|u3|Q~0_combout\,
	ena => \SDisplay|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:4:in_reg|u3|Q~q\);

-- Location: FF_X77_Y42_N11
\SDisplay|circuit_gen:4:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:4:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:4:out_reg|u3|Q~q\);

-- Location: LCCOMB_X77_Y42_N30
\SDisplay|circuit_gen:4:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:in_reg|u2|Q~0_combout\ = !\Score|SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U2|Q~q\,
	combout => \SDisplay|circuit_gen:4:in_reg|u2|Q~0_combout\);

-- Location: FF_X77_Y42_N31
\SDisplay|circuit_gen:4:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:4:in_reg|u2|Q~0_combout\,
	ena => \SDisplay|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:4:in_reg|u2|Q~q\);

-- Location: FF_X77_Y42_N21
\SDisplay|circuit_gen:4:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:4:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:4:out_reg|u2|Q~q\);

-- Location: LCCOMB_X74_Y46_N4
\SDisplay|circuit_gen:4:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:in_reg|u1|Q~0_combout\ = !\Score|SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U3|Q~q\,
	combout => \SDisplay|circuit_gen:4:in_reg|u1|Q~0_combout\);

-- Location: FF_X74_Y46_N5
\SDisplay|circuit_gen:4:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:4:in_reg|u1|Q~0_combout\,
	ena => \SDisplay|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:4:in_reg|u1|Q~q\);

-- Location: FF_X77_Y42_N13
\SDisplay|circuit_gen:4:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:4:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:4:out_reg|u1|Q~q\);

-- Location: LCCOMB_X74_Y46_N6
\SDisplay|circuit_gen:4:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:in_reg|u0|Q~0_combout\ = !\Score|SReceiver|ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U4|Q~q\,
	combout => \SDisplay|circuit_gen:4:in_reg|u0|Q~0_combout\);

-- Location: FF_X74_Y46_N7
\SDisplay|circuit_gen:4:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:4:in_reg|u0|Q~0_combout\,
	ena => \SDisplay|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:4:in_reg|u0|Q~q\);

-- Location: FF_X77_Y42_N3
\SDisplay|circuit_gen:4:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:4:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:4:out_reg|u0|Q~q\);

-- Location: LCCOMB_X77_Y42_N22
\SDisplay|circuit_gen:4:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ = (\SDisplay|circuit_gen:4:out_reg|u3|Q~q\ & (\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:4:out_reg|u2|Q~q\ $ (\SDisplay|circuit_gen:4:out_reg|u0|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:4:out_reg|u3|Q~q\ & (!\SDisplay|circuit_gen:4:out_reg|u2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:4:out_reg|u3|Q~q\,
	datab => \SDisplay|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:4:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X77_Y42_N6
\SDisplay|circuit_gen:4:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ = (\SDisplay|circuit_gen:4:hex_digit|Ndout[0]~0_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:4:hex_digit|Ndout[0]~0_combout\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X77_Y42_N8
\SDisplay|circuit_gen:4:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ = (\SDisplay|circuit_gen:4:out_reg|u3|Q~q\ & (!\SDisplay|circuit_gen:4:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ $ (\SDisplay|circuit_gen:4:out_reg|u0|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:4:out_reg|u3|Q~q\ & (((!\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & !\SDisplay|circuit_gen:4:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:4:out_reg|u2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:4:out_reg|u3|Q~q\,
	datab => \SDisplay|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:4:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X77_Y42_N26
\SDisplay|circuit_gen:4:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ = (\SDisplay|circuit_gen:4:hex_digit|Ndout[1]~2_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:4:hex_digit|Ndout[1]~2_combout\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X77_Y42_N0
\SDisplay|circuit_gen:4:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ = (\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:4:out_reg|u3|Q~q\) # ((\SDisplay|circuit_gen:4:out_reg|u2|Q~q\)))) # (!\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & 
-- ((\SDisplay|circuit_gen:4:out_reg|u0|Q~q\ & ((!\SDisplay|circuit_gen:4:out_reg|u2|Q~q\))) # (!\SDisplay|circuit_gen:4:out_reg|u0|Q~q\ & (\SDisplay|circuit_gen:4:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:4:out_reg|u3|Q~q\,
	datab => \SDisplay|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:4:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X77_Y42_N4
\SDisplay|circuit_gen:4:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ = (!\SDisplay|circuit_gen:4:hex_digit|Ndout[2]~4_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:4:hex_digit|Ndout[2]~4_combout\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X77_Y42_N10
\SDisplay|circuit_gen:4:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ = (\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:4:out_reg|u0|Q~q\ $ (((\SDisplay|circuit_gen:4:out_reg|u2|Q~q\))))) # (!\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & 
-- ((\SDisplay|circuit_gen:4:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:4:out_reg|u3|Q~q\))) # (!\SDisplay|circuit_gen:4:out_reg|u2|Q~q\ & (!\SDisplay|circuit_gen:4:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:4:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:4:out_reg|u0|Q~q\,
	datac => \SDisplay|circuit_gen:4:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:4:out_reg|u2|Q~q\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X77_Y42_N14
\SDisplay|circuit_gen:4:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ = (\SDisplay|circuit_gen:4:hex_digit|Ndout[3]~6_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:4:hex_digit|Ndout[3]~6_combout\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X77_Y42_N20
\SDisplay|circuit_gen:4:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ = (\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:4:out_reg|u2|Q~q\ & (!\SDisplay|circuit_gen:4:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:4:out_reg|u2|Q~q\ & 
-- ((\SDisplay|circuit_gen:4:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & (((!\SDisplay|circuit_gen:4:out_reg|u3|Q~q\)) # (!\SDisplay|circuit_gen:4:out_reg|u0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:4:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:4:out_reg|u0|Q~q\,
	datac => \SDisplay|circuit_gen:4:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X77_Y42_N16
\SDisplay|circuit_gen:4:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ = (\SDisplay|circuit_gen:4:hex_digit|Ndout[4]~8_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:4:hex_digit|Ndout[4]~8_combout\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X77_Y42_N12
\SDisplay|circuit_gen:4:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ = (\SDisplay|circuit_gen:4:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:4:out_reg|u2|Q~q\) # (!\SDisplay|circuit_gen:4:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:4:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:4:out_reg|u3|Q~q\ & ((\SDisplay|circuit_gen:4:out_reg|u2|Q~q\) # (!\SDisplay|circuit_gen:4:out_reg|u1|Q~q\))) # (!\SDisplay|circuit_gen:4:out_reg|u3|Q~q\ & 
-- (!\SDisplay|circuit_gen:4:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:4:out_reg|u3|Q~q\,
	datab => \SDisplay|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:4:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:4:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X77_Y42_N28
\SDisplay|circuit_gen:4:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ = (\SDisplay|circuit_gen:4:hex_digit|Ndout[5]~10_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:4:hex_digit|Ndout[5]~10_combout\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X77_Y42_N2
\SDisplay|circuit_gen:4:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ = (\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:4:out_reg|u2|Q~q\ $ (((\SDisplay|circuit_gen:4:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:4:out_reg|u1|Q~q\ & 
-- (\SDisplay|circuit_gen:4:out_reg|u3|Q~q\ & ((\SDisplay|circuit_gen:4:out_reg|u2|Q~q\) # (\SDisplay|circuit_gen:4:out_reg|u0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:4:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:4:out_reg|u2|Q~q\,
	datac => \SDisplay|circuit_gen:4:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:4:out_reg|u3|Q~q\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X77_Y42_N18
\SDisplay|circuit_gen:4:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ = (!\SDisplay|circuit_gen:4:hex_digit|Ndout[6]~12_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:4:hex_digit|Ndout[6]~12_combout\,
	combout => \SDisplay|circuit_gen:4:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X77_Y44_N4
\SDisplay|circuit_gen:5:in_reg|u1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:in_reg|u1|Q~0_combout\ = !\Score|SReceiver|ShRegister|U3|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U3|Q~q\,
	combout => \SDisplay|circuit_gen:5:in_reg|u1|Q~0_combout\);

-- Location: LCCOMB_X71_Y44_N18
\SDisplay|decoder|dout[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|decoder|dout[5]~5_combout\ = (\Score|SReceiver|ShRegister|U5|Q~q\ & (\Score|SReceiver|ShRegister|U7|Q~q\ & !\Score|SReceiver|ShRegister|U6|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Score|SReceiver|ShRegister|U5|Q~q\,
	datac => \Score|SReceiver|ShRegister|U7|Q~q\,
	datad => \Score|SReceiver|ShRegister|U6|Q~q\,
	combout => \SDisplay|decoder|dout[5]~5_combout\);

-- Location: FF_X77_Y44_N5
\SDisplay|circuit_gen:5:in_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:5:in_reg|u1|Q~0_combout\,
	ena => \SDisplay|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:5:in_reg|u1|Q~q\);

-- Location: FF_X77_Y44_N13
\SDisplay|circuit_gen:5:out_reg|u1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:5:in_reg|u1|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:5:out_reg|u1|Q~q\);

-- Location: LCCOMB_X77_Y44_N16
\SDisplay|circuit_gen:5:in_reg|u3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:in_reg|u3|Q~0_combout\ = !\Score|SReceiver|ShRegister|U1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Score|SReceiver|ShRegister|U1|Q~q\,
	combout => \SDisplay|circuit_gen:5:in_reg|u3|Q~0_combout\);

-- Location: FF_X77_Y44_N17
\SDisplay|circuit_gen:5:in_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:5:in_reg|u3|Q~0_combout\,
	ena => \SDisplay|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:5:in_reg|u3|Q~q\);

-- Location: FF_X77_Y44_N25
\SDisplay|circuit_gen:5:out_reg|u3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:5:in_reg|u3|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:5:out_reg|u3|Q~q\);

-- Location: LCCOMB_X77_Y44_N22
\SDisplay|circuit_gen:5:in_reg|u2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:in_reg|u2|Q~0_combout\ = !\Score|SReceiver|ShRegister|U2|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U2|Q~q\,
	combout => \SDisplay|circuit_gen:5:in_reg|u2|Q~0_combout\);

-- Location: FF_X77_Y44_N23
\SDisplay|circuit_gen:5:in_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:5:in_reg|u2|Q~0_combout\,
	ena => \SDisplay|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:5:in_reg|u2|Q~q\);

-- Location: FF_X77_Y44_N27
\SDisplay|circuit_gen:5:out_reg|u2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:5:in_reg|u2|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:5:out_reg|u2|Q~q\);

-- Location: LCCOMB_X77_Y44_N30
\SDisplay|circuit_gen:5:in_reg|u0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:in_reg|u0|Q~0_combout\ = !\Score|SReceiver|ShRegister|U4|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Score|SReceiver|ShRegister|U4|Q~q\,
	combout => \SDisplay|circuit_gen:5:in_reg|u0|Q~0_combout\);

-- Location: FF_X77_Y44_N31
\SDisplay|circuit_gen:5:in_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	d => \SDisplay|circuit_gen:5:in_reg|u0|Q~0_combout\,
	ena => \SDisplay|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:5:in_reg|u0|Q~q\);

-- Location: FF_X77_Y44_N9
\SDisplay|circuit_gen:5:out_reg|u0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Score|dispatcher|CurrentState.STATE_01~clkctrl_outclk\,
	asdata => \SDisplay|circuit_gen:5:in_reg|u0|Q~q\,
	sload => VCC,
	ena => \SDisplay|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDisplay|circuit_gen:5:out_reg|u0|Q~q\);

-- Location: LCCOMB_X77_Y44_N10
\SDisplay|circuit_gen:5:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ = (\SDisplay|circuit_gen:5:out_reg|u3|Q~q\ & (\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & (\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ $ (\SDisplay|circuit_gen:5:out_reg|u0|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:5:out_reg|u3|Q~q\ & (((!\SDisplay|circuit_gen:5:out_reg|u2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:5:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:5:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:5:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X77_Y44_N0
\SDisplay|circuit_gen:5:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ = (\SDisplay|circuit_gen:5:hex_digit|Ndout[0]~0_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:5:hex_digit|Ndout[0]~0_combout\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X77_Y44_N20
\SDisplay|circuit_gen:5:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ = (\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:5:out_reg|u0|Q~q\) # (!\SDisplay|circuit_gen:5:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:5:out_reg|u0|Q~q\ & ((!\SDisplay|circuit_gen:5:out_reg|u2|Q~q\))) # (!\SDisplay|circuit_gen:5:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:5:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:5:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:5:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:5:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X77_Y44_N18
\SDisplay|circuit_gen:5:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ = (\SDisplay|circuit_gen:5:hex_digit|Ndout[1]~2_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:5:hex_digit|Ndout[1]~2_combout\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X77_Y44_N6
\SDisplay|circuit_gen:5:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ = (\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:5:out_reg|u3|Q~q\) # ((\SDisplay|circuit_gen:5:out_reg|u2|Q~q\)))) # (!\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & 
-- ((\SDisplay|circuit_gen:5:out_reg|u0|Q~q\ & ((!\SDisplay|circuit_gen:5:out_reg|u2|Q~q\))) # (!\SDisplay|circuit_gen:5:out_reg|u0|Q~q\ & (\SDisplay|circuit_gen:5:out_reg|u3|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:5:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:5:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:5:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X77_Y40_N8
\SDisplay|circuit_gen:5:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ = (!\SDisplay|circuit_gen:5:hex_digit|Ndout[2]~4_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:5:hex_digit|Ndout[2]~4_combout\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X77_Y44_N24
\SDisplay|circuit_gen:5:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ = (\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & ((\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & (!\SDisplay|circuit_gen:5:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & 
-- ((!\SDisplay|circuit_gen:5:out_reg|u3|Q~q\))))) # (!\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:5:out_reg|u0|Q~q\ $ (((!\SDisplay|circuit_gen:5:out_reg|u1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \SDisplay|circuit_gen:5:out_reg|u0|Q~q\,
	datac => \SDisplay|circuit_gen:5:out_reg|u3|Q~q\,
	datad => \SDisplay|circuit_gen:5:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X77_Y40_N18
\SDisplay|circuit_gen:5:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ = (\SDisplay|circuit_gen:5:hex_digit|Ndout[3]~6_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:5:hex_digit|Ndout[3]~6_combout\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X77_Y44_N26
\SDisplay|circuit_gen:5:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ = (\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:5:out_reg|u0|Q~q\))) # (!\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & 
-- (\SDisplay|circuit_gen:5:out_reg|u3|Q~q\)))) # (!\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & (((!\SDisplay|circuit_gen:5:out_reg|u0|Q~q\)) # (!\SDisplay|circuit_gen:5:out_reg|u3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:5:out_reg|u1|Q~q\,
	datab => \SDisplay|circuit_gen:5:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:5:out_reg|u2|Q~q\,
	datad => \SDisplay|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X77_Y44_N28
\SDisplay|circuit_gen:5:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ = (\SDisplay|circuit_gen:5:hex_digit|Ndout[4]~8_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:5:hex_digit|Ndout[4]~8_combout\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X77_Y44_N12
\SDisplay|circuit_gen:5:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ = (\SDisplay|circuit_gen:5:out_reg|u0|Q~q\ & (!\SDisplay|circuit_gen:5:out_reg|u1|Q~q\ & ((\SDisplay|circuit_gen:5:out_reg|u2|Q~q\) # (!\SDisplay|circuit_gen:5:out_reg|u3|Q~q\)))) # 
-- (!\SDisplay|circuit_gen:5:out_reg|u0|Q~q\ & ((\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:5:out_reg|u3|Q~q\)) # (!\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & ((!\SDisplay|circuit_gen:5:out_reg|u1|Q~q\) # 
-- (!\SDisplay|circuit_gen:5:out_reg|u3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \SDisplay|circuit_gen:5:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:5:out_reg|u1|Q~q\,
	datad => \SDisplay|circuit_gen:5:out_reg|u0|Q~q\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X77_Y44_N2
\SDisplay|circuit_gen:5:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ = (\SDisplay|circuit_gen:5:hex_digit|Ndout[5]~10_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datac => \SDisplay|circuit_gen:5:hex_digit|Ndout[5]~10_combout\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X77_Y44_N8
\SDisplay|circuit_gen:5:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ = (\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & (\SDisplay|circuit_gen:5:out_reg|u3|Q~q\ $ (((\SDisplay|circuit_gen:5:out_reg|u1|Q~q\))))) # (!\SDisplay|circuit_gen:5:out_reg|u2|Q~q\ & 
-- (\SDisplay|circuit_gen:5:out_reg|u3|Q~q\ & ((\SDisplay|circuit_gen:5:out_reg|u0|Q~q\) # (\SDisplay|circuit_gen:5:out_reg|u1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SDisplay|circuit_gen:5:out_reg|u2|Q~q\,
	datab => \SDisplay|circuit_gen:5:out_reg|u3|Q~q\,
	datac => \SDisplay|circuit_gen:5:out_reg|u0|Q~q\,
	datad => \SDisplay|circuit_gen:5:out_reg|u1|Q~q\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X77_Y44_N14
\SDisplay|circuit_gen:5:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SDisplay|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ = (!\SDisplay|circuit_gen:5:hex_digit|Ndout[6]~12_combout\) # (!\SDisplay|clear_reg|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SDisplay|clear_reg|Q~q\,
	datad => \SDisplay|circuit_gen:5:hex_digit|Ndout[6]~12_combout\,
	combout => \SDisplay|circuit_gen:5:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X45_Y41_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X45_Y41_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: FF_X45_Y41_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: FF_X45_Y41_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: LCCOMB_X64_Y40_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X44_Y40_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X41_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X78_Y21_N1
\ack~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ack,
	o => \ack~input_o\);

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
END structure;


