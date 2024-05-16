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

-- DATE "05/15/2024 12:24:02"

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

ENTITY 	keyboardReader IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	kack : IN std_logic;
	I : IN std_logic_vector(3 DOWNTO 0);
	O : BUFFER std_logic_vector(3 DOWNTO 0);
	dval : BUFFER std_logic;
	D : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END keyboardReader;

-- Design Ports Information
-- O[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dval	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- kack	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF keyboardReader IS
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
SIGNAL ww_kack : std_logic;
SIGNAL ww_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_O : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dval : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \kdecode|kscan|clkD|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RingBuff|RingBufferCtrl|Selector9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~15clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~13clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~12clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \dval~output_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count[0]~20_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~1\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~2_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~3\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~4_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~5\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~6_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~7\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~8_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~9\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~10_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~11\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~12_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~8_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~13\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~14_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~15\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~16_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~17\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~18_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~19\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~20_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~21\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~22_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~9_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~23\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~24_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~10_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~25\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~26_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~11_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~27\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~29\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~30_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~31\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~32_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~13_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~33\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~34_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~35\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~36_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~14_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~37\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~38_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~15_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~39\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~40_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~16_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~41\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~42_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~17_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~43\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~44_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~18_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~45\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~46_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~6_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~47\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~48_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~19_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~49\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~50_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~51\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~52_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~53\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~54_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~55\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~56_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~57\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~58_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~59\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~60_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~61\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~62_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~8_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~7_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~5_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~9_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Add0~28_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count~12_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~3_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~1_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~2_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|Equal0~4_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|tmp~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|tmp~feeder_combout\ : std_logic;
SIGNAL \kdecode|kscan|clkD|tmp~q\ : std_logic;
SIGNAL \kdecode|kscan|clkD|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \I[0]~input_o\ : std_logic;
SIGNAL \I[1]~input_o\ : std_logic;
SIGNAL \kdecode|kscan|mux|Y~0_combout\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \kdecode|kscan|mux|Y~1_combout\ : std_logic;
SIGNAL \kdecode|kctrl|Selector1~0_combout\ : std_logic;
SIGNAL \kdecode|kctrl|Selector1~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \kdecode|kctrl|CurrentState.STATE_01~q\ : std_logic;
SIGNAL \kack~input_o\ : std_logic;
SIGNAL \OutputBuff|OutputBufferCtrl|NextState.STATE_01~0_combout\ : std_logic;
SIGNAL \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\ : std_logic;
SIGNAL \OutputBuff|OutputBufferCtrl|Selector1~0_combout\ : std_logic;
SIGNAL \OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\ : std_logic;
SIGNAL \OutputBuff|OutputBufferCtrl|Selector0~0_combout\ : std_logic;
SIGNAL \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|Selector1~1_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_110_183~combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_110~feeder_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|HA2|S~combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|HA2|S~combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|HA2|S~combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|Selector9~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|empty~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|comb~2_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|comb~1_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_100_218~combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_101_202~combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|s_enable~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|Selector8~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|Selector8~1_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_000_291~combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_000~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|comb~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_001_272~combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_010_256~combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|Selector4~0_combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|NextState.STATE_011_237~combout\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|Selector1~0_combout\ : std_logic;
SIGNAL \kdecode|kctrl|Selector2~0_combout\ : std_logic;
SIGNAL \kdecode|kctrl|CurrentState.STATE_10~q\ : std_logic;
SIGNAL \kdecode|kctrl|Selector0~0_combout\ : std_logic;
SIGNAL \kdecode|kctrl|Selector0~1_combout\ : std_logic;
SIGNAL \kdecode|kctrl|CurrentState.STATE_00~q\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~1_combout\ : std_logic;
SIGNAL \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|dec|O~0_combout\ : std_logic;
SIGNAL \kdecode|kscan|dec|O~1_combout\ : std_logic;
SIGNAL \kdecode|kscan|dec|O~2_combout\ : std_logic;
SIGNAL \kdecode|kscan|dec|O~3_combout\ : std_logic;
SIGNAL \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\ : std_logic;
SIGNAL \RingBuff|RingBufferCtrl|selPG~0_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|R|ram~24_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|R|ram~16_combout\ : std_logic;
SIGNAL \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~32_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|R|ram~28_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|R|ram~20_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~33_combout\ : std_logic;
SIGNAL \rtl~14_combout\ : std_logic;
SIGNAL \rtl~14clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|R|ram~0_combout\ : std_logic;
SIGNAL \rtl~13_combout\ : std_logic;
SIGNAL \rtl~13clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|R|ram~4_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~34_combout\ : std_logic;
SIGNAL \rtl~12_combout\ : std_logic;
SIGNAL \rtl~12clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|R|ram~8_combout\ : std_logic;
SIGNAL \rtl~15_combout\ : std_logic;
SIGNAL \rtl~15clkctrl_outclk\ : std_logic;
SIGNAL \RingBuff|R|ram~12_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~35_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~36_combout\ : std_logic;
SIGNAL \OutputBuff|Reg|FFD1|Q~q\ : std_logic;
SIGNAL \RingBuff|R|ram~29_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~17_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~25_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~37_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~21_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~38_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~9_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~1_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~5_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~39_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~13_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~40_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~41_combout\ : std_logic;
SIGNAL \OutputBuff|Reg|FFD2|Q~q\ : std_logic;
SIGNAL \RingBuff|R|ram~26_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~18_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~42_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~30_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~22_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~43_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~2_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~6_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~44_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~14_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~10_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~45_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~46_combout\ : std_logic;
SIGNAL \OutputBuff|Reg|FFD3|Q~q\ : std_logic;
SIGNAL \RingBuff|R|ram~27_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~19_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~47_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~23_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~31_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~48_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~15_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~11_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~3_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~7_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~49_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~50_combout\ : std_logic;
SIGNAL \RingBuff|R|ram~51_combout\ : std_logic;
SIGNAL \OutputBuff|Reg|FFD4|Q~q\ : std_logic;
SIGNAL \kdecode|kscan|clkD|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \kdecode|kscan|dec|ALT_INV_O~3_combout\ : std_logic;
SIGNAL \kdecode|kscan|dec|ALT_INV_O~2_combout\ : std_logic;
SIGNAL \kdecode|kscan|dec|ALT_INV_O~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_kack <= kack;
ww_I <= I;
O <= ww_O;
dval <= ww_dval;
D <= ww_D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\);

\kdecode|kscan|clkD|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \kdecode|kscan|clkD|tmp~q\);

\RingBuff|RingBufferCtrl|Selector9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RingBuff|RingBufferCtrl|Selector9~0_combout\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\rtl~15clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~15_combout\);

\rtl~14clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~14_combout\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);

\rtl~13clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~13_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rtl~12clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~12_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\kdecode|kscan|dec|ALT_INV_O~3_combout\ <= NOT \kdecode|kscan|dec|O~3_combout\;
\kdecode|kscan|dec|ALT_INV_O~2_combout\ <= NOT \kdecode|kscan|dec|O~2_combout\;
\kdecode|kscan|dec|ALT_INV_O~1_combout\ <= NOT \kdecode|kscan|dec|O~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N20
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

-- Location: IOOBUF_X38_Y0_N9
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kdecode|kscan|dec|O~0_combout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kdecode|kscan|dec|ALT_INV_O~1_combout\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kdecode|kscan|dec|ALT_INV_O~2_combout\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\O[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \kdecode|kscan|dec|ALT_INV_O~3_combout\,
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\dval~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\,
	devoe => ww_devoe,
	o => \dval~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuff|Reg|FFD1|Q~q\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuff|Reg|FFD2|Q~q\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\D[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuff|Reg|FFD3|Q~q\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\D[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OutputBuff|Reg|FFD4|Q~q\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

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

-- Location: LCCOMB_X45_Y53_N0
\kdecode|kscan|clkD|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~0_combout\ = \kdecode|kscan|clkD|count\(0) $ (GND)
-- \kdecode|kscan|clkD|Add0~1\ = CARRY(!\kdecode|kscan|clkD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(0),
	datad => VCC,
	combout => \kdecode|kscan|clkD|Add0~0_combout\,
	cout => \kdecode|kscan|clkD|Add0~1\);

-- Location: LCCOMB_X44_Y53_N16
\kdecode|kscan|clkD|count[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count[0]~20_combout\ = !\kdecode|kscan|clkD|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kscan|clkD|Add0~0_combout\,
	combout => \kdecode|kscan|clkD|count[0]~20_combout\);

-- Location: FF_X45_Y53_N13
\kdecode|kscan|clkD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \kdecode|kscan|clkD|count[0]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(0));

-- Location: LCCOMB_X45_Y53_N2
\kdecode|kscan|clkD|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~2_combout\ = (\kdecode|kscan|clkD|count\(1) & (!\kdecode|kscan|clkD|Add0~1\)) # (!\kdecode|kscan|clkD|count\(1) & ((\kdecode|kscan|clkD|Add0~1\) # (GND)))
-- \kdecode|kscan|clkD|Add0~3\ = CARRY((!\kdecode|kscan|clkD|Add0~1\) # (!\kdecode|kscan|clkD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(1),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~1\,
	combout => \kdecode|kscan|clkD|Add0~2_combout\,
	cout => \kdecode|kscan|clkD|Add0~3\);

-- Location: FF_X45_Y53_N3
\kdecode|kscan|clkD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(1));

-- Location: LCCOMB_X45_Y53_N4
\kdecode|kscan|clkD|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~4_combout\ = (\kdecode|kscan|clkD|count\(2) & (\kdecode|kscan|clkD|Add0~3\ $ (GND))) # (!\kdecode|kscan|clkD|count\(2) & (!\kdecode|kscan|clkD|Add0~3\ & VCC))
-- \kdecode|kscan|clkD|Add0~5\ = CARRY((\kdecode|kscan|clkD|count\(2) & !\kdecode|kscan|clkD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(2),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~3\,
	combout => \kdecode|kscan|clkD|Add0~4_combout\,
	cout => \kdecode|kscan|clkD|Add0~5\);

-- Location: FF_X45_Y53_N5
\kdecode|kscan|clkD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(2));

-- Location: LCCOMB_X45_Y53_N6
\kdecode|kscan|clkD|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~6_combout\ = (\kdecode|kscan|clkD|count\(3) & (!\kdecode|kscan|clkD|Add0~5\)) # (!\kdecode|kscan|clkD|count\(3) & ((\kdecode|kscan|clkD|Add0~5\) # (GND)))
-- \kdecode|kscan|clkD|Add0~7\ = CARRY((!\kdecode|kscan|clkD|Add0~5\) # (!\kdecode|kscan|clkD|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(3),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~5\,
	combout => \kdecode|kscan|clkD|Add0~6_combout\,
	cout => \kdecode|kscan|clkD|Add0~7\);

-- Location: FF_X45_Y53_N7
\kdecode|kscan|clkD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(3));

-- Location: LCCOMB_X45_Y53_N8
\kdecode|kscan|clkD|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~8_combout\ = (\kdecode|kscan|clkD|count\(4) & (\kdecode|kscan|clkD|Add0~7\ $ (GND))) # (!\kdecode|kscan|clkD|count\(4) & (!\kdecode|kscan|clkD|Add0~7\ & VCC))
-- \kdecode|kscan|clkD|Add0~9\ = CARRY((\kdecode|kscan|clkD|count\(4) & !\kdecode|kscan|clkD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(4),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~7\,
	combout => \kdecode|kscan|clkD|Add0~8_combout\,
	cout => \kdecode|kscan|clkD|Add0~9\);

-- Location: FF_X45_Y53_N9
\kdecode|kscan|clkD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(4));

-- Location: LCCOMB_X45_Y53_N10
\kdecode|kscan|clkD|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~10_combout\ = (\kdecode|kscan|clkD|count\(5) & (!\kdecode|kscan|clkD|Add0~9\)) # (!\kdecode|kscan|clkD|count\(5) & ((\kdecode|kscan|clkD|Add0~9\) # (GND)))
-- \kdecode|kscan|clkD|Add0~11\ = CARRY((!\kdecode|kscan|clkD|Add0~9\) # (!\kdecode|kscan|clkD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(5),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~9\,
	combout => \kdecode|kscan|clkD|Add0~10_combout\,
	cout => \kdecode|kscan|clkD|Add0~11\);

-- Location: FF_X45_Y53_N11
\kdecode|kscan|clkD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(5));

-- Location: LCCOMB_X45_Y53_N12
\kdecode|kscan|clkD|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~12_combout\ = (\kdecode|kscan|clkD|count\(6) & (\kdecode|kscan|clkD|Add0~11\ $ (GND))) # (!\kdecode|kscan|clkD|count\(6) & (!\kdecode|kscan|clkD|Add0~11\ & VCC))
-- \kdecode|kscan|clkD|Add0~13\ = CARRY((\kdecode|kscan|clkD|count\(6) & !\kdecode|kscan|clkD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(6),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~11\,
	combout => \kdecode|kscan|clkD|Add0~12_combout\,
	cout => \kdecode|kscan|clkD|Add0~13\);

-- Location: LCCOMB_X44_Y53_N6
\kdecode|kscan|clkD|count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~8_combout\ = (\kdecode|kscan|clkD|Add0~12_combout\ & ((!\kdecode|kscan|clkD|Equal0~9_combout\) # (!\kdecode|kscan|clkD|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~4_combout\,
	datac => \kdecode|kscan|clkD|Add0~12_combout\,
	datad => \kdecode|kscan|clkD|Equal0~9_combout\,
	combout => \kdecode|kscan|clkD|count~8_combout\);

-- Location: FF_X44_Y53_N7
\kdecode|kscan|clkD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(6));

-- Location: LCCOMB_X45_Y53_N14
\kdecode|kscan|clkD|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~14_combout\ = (\kdecode|kscan|clkD|count\(7) & (!\kdecode|kscan|clkD|Add0~13\)) # (!\kdecode|kscan|clkD|count\(7) & ((\kdecode|kscan|clkD|Add0~13\) # (GND)))
-- \kdecode|kscan|clkD|Add0~15\ = CARRY((!\kdecode|kscan|clkD|Add0~13\) # (!\kdecode|kscan|clkD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(7),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~13\,
	combout => \kdecode|kscan|clkD|Add0~14_combout\,
	cout => \kdecode|kscan|clkD|Add0~15\);

-- Location: FF_X45_Y53_N15
\kdecode|kscan|clkD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(7));

-- Location: LCCOMB_X45_Y53_N16
\kdecode|kscan|clkD|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~16_combout\ = (\kdecode|kscan|clkD|count\(8) & (\kdecode|kscan|clkD|Add0~15\ $ (GND))) # (!\kdecode|kscan|clkD|count\(8) & (!\kdecode|kscan|clkD|Add0~15\ & VCC))
-- \kdecode|kscan|clkD|Add0~17\ = CARRY((\kdecode|kscan|clkD|count\(8) & !\kdecode|kscan|clkD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(8),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~15\,
	combout => \kdecode|kscan|clkD|Add0~16_combout\,
	cout => \kdecode|kscan|clkD|Add0~17\);

-- Location: FF_X45_Y53_N17
\kdecode|kscan|clkD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(8));

-- Location: LCCOMB_X45_Y53_N18
\kdecode|kscan|clkD|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~18_combout\ = (\kdecode|kscan|clkD|count\(9) & (!\kdecode|kscan|clkD|Add0~17\)) # (!\kdecode|kscan|clkD|count\(9) & ((\kdecode|kscan|clkD|Add0~17\) # (GND)))
-- \kdecode|kscan|clkD|Add0~19\ = CARRY((!\kdecode|kscan|clkD|Add0~17\) # (!\kdecode|kscan|clkD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(9),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~17\,
	combout => \kdecode|kscan|clkD|Add0~18_combout\,
	cout => \kdecode|kscan|clkD|Add0~19\);

-- Location: FF_X45_Y53_N19
\kdecode|kscan|clkD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(9));

-- Location: LCCOMB_X45_Y53_N20
\kdecode|kscan|clkD|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~20_combout\ = (\kdecode|kscan|clkD|count\(10) & (\kdecode|kscan|clkD|Add0~19\ $ (GND))) # (!\kdecode|kscan|clkD|count\(10) & (!\kdecode|kscan|clkD|Add0~19\ & VCC))
-- \kdecode|kscan|clkD|Add0~21\ = CARRY((\kdecode|kscan|clkD|count\(10) & !\kdecode|kscan|clkD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(10),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~19\,
	combout => \kdecode|kscan|clkD|Add0~20_combout\,
	cout => \kdecode|kscan|clkD|Add0~21\);

-- Location: FF_X45_Y53_N21
\kdecode|kscan|clkD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(10));

-- Location: LCCOMB_X45_Y53_N22
\kdecode|kscan|clkD|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~22_combout\ = (\kdecode|kscan|clkD|count\(11) & (!\kdecode|kscan|clkD|Add0~21\)) # (!\kdecode|kscan|clkD|count\(11) & ((\kdecode|kscan|clkD|Add0~21\) # (GND)))
-- \kdecode|kscan|clkD|Add0~23\ = CARRY((!\kdecode|kscan|clkD|Add0~21\) # (!\kdecode|kscan|clkD|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(11),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~21\,
	combout => \kdecode|kscan|clkD|Add0~22_combout\,
	cout => \kdecode|kscan|clkD|Add0~23\);

-- Location: LCCOMB_X44_Y53_N26
\kdecode|kscan|clkD|count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~9_combout\ = (\kdecode|kscan|clkD|Add0~22_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datac => \kdecode|kscan|clkD|Equal0~4_combout\,
	datad => \kdecode|kscan|clkD|Add0~22_combout\,
	combout => \kdecode|kscan|clkD|count~9_combout\);

-- Location: FF_X44_Y53_N27
\kdecode|kscan|clkD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(11));

-- Location: LCCOMB_X45_Y53_N24
\kdecode|kscan|clkD|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~24_combout\ = (\kdecode|kscan|clkD|count\(12) & (\kdecode|kscan|clkD|Add0~23\ $ (GND))) # (!\kdecode|kscan|clkD|count\(12) & (!\kdecode|kscan|clkD|Add0~23\ & VCC))
-- \kdecode|kscan|clkD|Add0~25\ = CARRY((\kdecode|kscan|clkD|count\(12) & !\kdecode|kscan|clkD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(12),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~23\,
	combout => \kdecode|kscan|clkD|Add0~24_combout\,
	cout => \kdecode|kscan|clkD|Add0~25\);

-- Location: LCCOMB_X44_Y53_N28
\kdecode|kscan|clkD|count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~10_combout\ = (\kdecode|kscan|clkD|Add0~24_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datac => \kdecode|kscan|clkD|Equal0~4_combout\,
	datad => \kdecode|kscan|clkD|Add0~24_combout\,
	combout => \kdecode|kscan|clkD|count~10_combout\);

-- Location: FF_X44_Y53_N29
\kdecode|kscan|clkD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(12));

-- Location: LCCOMB_X45_Y53_N26
\kdecode|kscan|clkD|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~26_combout\ = (\kdecode|kscan|clkD|count\(13) & (!\kdecode|kscan|clkD|Add0~25\)) # (!\kdecode|kscan|clkD|count\(13) & ((\kdecode|kscan|clkD|Add0~25\) # (GND)))
-- \kdecode|kscan|clkD|Add0~27\ = CARRY((!\kdecode|kscan|clkD|Add0~25\) # (!\kdecode|kscan|clkD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(13),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~25\,
	combout => \kdecode|kscan|clkD|Add0~26_combout\,
	cout => \kdecode|kscan|clkD|Add0~27\);

-- Location: LCCOMB_X44_Y53_N24
\kdecode|kscan|clkD|count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~11_combout\ = (\kdecode|kscan|clkD|Add0~26_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datac => \kdecode|kscan|clkD|Equal0~4_combout\,
	datad => \kdecode|kscan|clkD|Add0~26_combout\,
	combout => \kdecode|kscan|clkD|count~11_combout\);

-- Location: FF_X44_Y53_N25
\kdecode|kscan|clkD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(13));

-- Location: LCCOMB_X45_Y53_N28
\kdecode|kscan|clkD|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~28_combout\ = (\kdecode|kscan|clkD|count\(14) & (\kdecode|kscan|clkD|Add0~27\ $ (GND))) # (!\kdecode|kscan|clkD|count\(14) & (!\kdecode|kscan|clkD|Add0~27\ & VCC))
-- \kdecode|kscan|clkD|Add0~29\ = CARRY((\kdecode|kscan|clkD|count\(14) & !\kdecode|kscan|clkD|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(14),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~27\,
	combout => \kdecode|kscan|clkD|Add0~28_combout\,
	cout => \kdecode|kscan|clkD|Add0~29\);

-- Location: LCCOMB_X45_Y53_N30
\kdecode|kscan|clkD|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~30_combout\ = (\kdecode|kscan|clkD|count\(15) & (!\kdecode|kscan|clkD|Add0~29\)) # (!\kdecode|kscan|clkD|count\(15) & ((\kdecode|kscan|clkD|Add0~29\) # (GND)))
-- \kdecode|kscan|clkD|Add0~31\ = CARRY((!\kdecode|kscan|clkD|Add0~29\) # (!\kdecode|kscan|clkD|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(15),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~29\,
	combout => \kdecode|kscan|clkD|Add0~30_combout\,
	cout => \kdecode|kscan|clkD|Add0~31\);

-- Location: FF_X45_Y53_N31
\kdecode|kscan|clkD|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(15));

-- Location: LCCOMB_X45_Y52_N0
\kdecode|kscan|clkD|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~32_combout\ = (\kdecode|kscan|clkD|count\(16) & (\kdecode|kscan|clkD|Add0~31\ $ (GND))) # (!\kdecode|kscan|clkD|count\(16) & (!\kdecode|kscan|clkD|Add0~31\ & VCC))
-- \kdecode|kscan|clkD|Add0~33\ = CARRY((\kdecode|kscan|clkD|count\(16) & !\kdecode|kscan|clkD|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(16),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~31\,
	combout => \kdecode|kscan|clkD|Add0~32_combout\,
	cout => \kdecode|kscan|clkD|Add0~33\);

-- Location: LCCOMB_X44_Y52_N4
\kdecode|kscan|clkD|count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~13_combout\ = (\kdecode|kscan|clkD|Add0~32_combout\ & ((!\kdecode|kscan|clkD|Equal0~9_combout\) # (!\kdecode|kscan|clkD|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~4_combout\,
	datab => \kdecode|kscan|clkD|Add0~32_combout\,
	datac => \kdecode|kscan|clkD|Equal0~9_combout\,
	combout => \kdecode|kscan|clkD|count~13_combout\);

-- Location: FF_X44_Y52_N5
\kdecode|kscan|clkD|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(16));

-- Location: LCCOMB_X45_Y52_N2
\kdecode|kscan|clkD|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~34_combout\ = (\kdecode|kscan|clkD|count\(17) & (!\kdecode|kscan|clkD|Add0~33\)) # (!\kdecode|kscan|clkD|count\(17) & ((\kdecode|kscan|clkD|Add0~33\) # (GND)))
-- \kdecode|kscan|clkD|Add0~35\ = CARRY((!\kdecode|kscan|clkD|Add0~33\) # (!\kdecode|kscan|clkD|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(17),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~33\,
	combout => \kdecode|kscan|clkD|Add0~34_combout\,
	cout => \kdecode|kscan|clkD|Add0~35\);

-- Location: FF_X45_Y52_N3
\kdecode|kscan|clkD|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(17));

-- Location: LCCOMB_X45_Y52_N4
\kdecode|kscan|clkD|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~36_combout\ = (\kdecode|kscan|clkD|count\(18) & (\kdecode|kscan|clkD|Add0~35\ $ (GND))) # (!\kdecode|kscan|clkD|count\(18) & (!\kdecode|kscan|clkD|Add0~35\ & VCC))
-- \kdecode|kscan|clkD|Add0~37\ = CARRY((\kdecode|kscan|clkD|count\(18) & !\kdecode|kscan|clkD|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(18),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~35\,
	combout => \kdecode|kscan|clkD|Add0~36_combout\,
	cout => \kdecode|kscan|clkD|Add0~37\);

-- Location: LCCOMB_X44_Y52_N18
\kdecode|kscan|clkD|count~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~14_combout\ = (\kdecode|kscan|clkD|Add0~36_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datac => \kdecode|kscan|clkD|Equal0~4_combout\,
	datad => \kdecode|kscan|clkD|Add0~36_combout\,
	combout => \kdecode|kscan|clkD|count~14_combout\);

-- Location: FF_X44_Y52_N19
\kdecode|kscan|clkD|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(18));

-- Location: LCCOMB_X45_Y52_N6
\kdecode|kscan|clkD|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~38_combout\ = (\kdecode|kscan|clkD|count\(19) & (!\kdecode|kscan|clkD|Add0~37\)) # (!\kdecode|kscan|clkD|count\(19) & ((\kdecode|kscan|clkD|Add0~37\) # (GND)))
-- \kdecode|kscan|clkD|Add0~39\ = CARRY((!\kdecode|kscan|clkD|Add0~37\) # (!\kdecode|kscan|clkD|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(19),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~37\,
	combout => \kdecode|kscan|clkD|Add0~38_combout\,
	cout => \kdecode|kscan|clkD|Add0~39\);

-- Location: LCCOMB_X44_Y52_N16
\kdecode|kscan|clkD|count~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~15_combout\ = (\kdecode|kscan|clkD|Add0~38_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datac => \kdecode|kscan|clkD|Equal0~4_combout\,
	datad => \kdecode|kscan|clkD|Add0~38_combout\,
	combout => \kdecode|kscan|clkD|count~15_combout\);

-- Location: FF_X44_Y52_N17
\kdecode|kscan|clkD|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(19));

-- Location: LCCOMB_X45_Y52_N8
\kdecode|kscan|clkD|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~40_combout\ = (\kdecode|kscan|clkD|count\(20) & (\kdecode|kscan|clkD|Add0~39\ $ (GND))) # (!\kdecode|kscan|clkD|count\(20) & (!\kdecode|kscan|clkD|Add0~39\ & VCC))
-- \kdecode|kscan|clkD|Add0~41\ = CARRY((\kdecode|kscan|clkD|count\(20) & !\kdecode|kscan|clkD|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(20),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~39\,
	combout => \kdecode|kscan|clkD|Add0~40_combout\,
	cout => \kdecode|kscan|clkD|Add0~41\);

-- Location: LCCOMB_X44_Y52_N8
\kdecode|kscan|clkD|count~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~16_combout\ = (\kdecode|kscan|clkD|Add0~40_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datab => \kdecode|kscan|clkD|Equal0~4_combout\,
	datac => \kdecode|kscan|clkD|Add0~40_combout\,
	combout => \kdecode|kscan|clkD|count~16_combout\);

-- Location: FF_X44_Y52_N9
\kdecode|kscan|clkD|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(20));

-- Location: LCCOMB_X45_Y52_N10
\kdecode|kscan|clkD|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~42_combout\ = (\kdecode|kscan|clkD|count\(21) & (!\kdecode|kscan|clkD|Add0~41\)) # (!\kdecode|kscan|clkD|count\(21) & ((\kdecode|kscan|clkD|Add0~41\) # (GND)))
-- \kdecode|kscan|clkD|Add0~43\ = CARRY((!\kdecode|kscan|clkD|Add0~41\) # (!\kdecode|kscan|clkD|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(21),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~41\,
	combout => \kdecode|kscan|clkD|Add0~42_combout\,
	cout => \kdecode|kscan|clkD|Add0~43\);

-- Location: LCCOMB_X44_Y52_N6
\kdecode|kscan|clkD|count~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~17_combout\ = (\kdecode|kscan|clkD|Add0~42_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datab => \kdecode|kscan|clkD|Equal0~4_combout\,
	datac => \kdecode|kscan|clkD|Add0~42_combout\,
	combout => \kdecode|kscan|clkD|count~17_combout\);

-- Location: FF_X44_Y52_N7
\kdecode|kscan|clkD|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(21));

-- Location: LCCOMB_X45_Y52_N12
\kdecode|kscan|clkD|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~44_combout\ = (\kdecode|kscan|clkD|count\(22) & (\kdecode|kscan|clkD|Add0~43\ $ (GND))) # (!\kdecode|kscan|clkD|count\(22) & (!\kdecode|kscan|clkD|Add0~43\ & VCC))
-- \kdecode|kscan|clkD|Add0~45\ = CARRY((\kdecode|kscan|clkD|count\(22) & !\kdecode|kscan|clkD|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(22),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~43\,
	combout => \kdecode|kscan|clkD|Add0~44_combout\,
	cout => \kdecode|kscan|clkD|Add0~45\);

-- Location: LCCOMB_X44_Y52_N0
\kdecode|kscan|clkD|count~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~18_combout\ = (\kdecode|kscan|clkD|Add0~44_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datab => \kdecode|kscan|clkD|Equal0~4_combout\,
	datac => \kdecode|kscan|clkD|Add0~44_combout\,
	combout => \kdecode|kscan|clkD|count~18_combout\);

-- Location: FF_X44_Y52_N1
\kdecode|kscan|clkD|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(22));

-- Location: LCCOMB_X45_Y52_N14
\kdecode|kscan|clkD|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~46_combout\ = (\kdecode|kscan|clkD|count\(23) & (!\kdecode|kscan|clkD|Add0~45\)) # (!\kdecode|kscan|clkD|count\(23) & ((\kdecode|kscan|clkD|Add0~45\) # (GND)))
-- \kdecode|kscan|clkD|Add0~47\ = CARRY((!\kdecode|kscan|clkD|Add0~45\) # (!\kdecode|kscan|clkD|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(23),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~45\,
	combout => \kdecode|kscan|clkD|Add0~46_combout\,
	cout => \kdecode|kscan|clkD|Add0~47\);

-- Location: FF_X45_Y52_N15
\kdecode|kscan|clkD|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(23));

-- Location: LCCOMB_X44_Y52_N30
\kdecode|kscan|clkD|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~6_combout\ = (\kdecode|kscan|clkD|count\(21) & (\kdecode|kscan|clkD|count\(20) & (!\kdecode|kscan|clkD|count\(23) & \kdecode|kscan|clkD|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(21),
	datab => \kdecode|kscan|clkD|count\(20),
	datac => \kdecode|kscan|clkD|count\(23),
	datad => \kdecode|kscan|clkD|count\(22),
	combout => \kdecode|kscan|clkD|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y52_N16
\kdecode|kscan|clkD|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~48_combout\ = (\kdecode|kscan|clkD|count\(24) & (\kdecode|kscan|clkD|Add0~47\ $ (GND))) # (!\kdecode|kscan|clkD|count\(24) & (!\kdecode|kscan|clkD|Add0~47\ & VCC))
-- \kdecode|kscan|clkD|Add0~49\ = CARRY((\kdecode|kscan|clkD|count\(24) & !\kdecode|kscan|clkD|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(24),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~47\,
	combout => \kdecode|kscan|clkD|Add0~48_combout\,
	cout => \kdecode|kscan|clkD|Add0~49\);

-- Location: LCCOMB_X44_Y52_N12
\kdecode|kscan|clkD|count~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~19_combout\ = (\kdecode|kscan|clkD|Add0~48_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datac => \kdecode|kscan|clkD|Equal0~4_combout\,
	datad => \kdecode|kscan|clkD|Add0~48_combout\,
	combout => \kdecode|kscan|clkD|count~19_combout\);

-- Location: FF_X44_Y52_N13
\kdecode|kscan|clkD|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(24));

-- Location: LCCOMB_X45_Y52_N18
\kdecode|kscan|clkD|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~50_combout\ = (\kdecode|kscan|clkD|count\(25) & (!\kdecode|kscan|clkD|Add0~49\)) # (!\kdecode|kscan|clkD|count\(25) & ((\kdecode|kscan|clkD|Add0~49\) # (GND)))
-- \kdecode|kscan|clkD|Add0~51\ = CARRY((!\kdecode|kscan|clkD|Add0~49\) # (!\kdecode|kscan|clkD|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(25),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~49\,
	combout => \kdecode|kscan|clkD|Add0~50_combout\,
	cout => \kdecode|kscan|clkD|Add0~51\);

-- Location: FF_X45_Y52_N19
\kdecode|kscan|clkD|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(25));

-- Location: LCCOMB_X45_Y52_N20
\kdecode|kscan|clkD|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~52_combout\ = (\kdecode|kscan|clkD|count\(26) & (\kdecode|kscan|clkD|Add0~51\ $ (GND))) # (!\kdecode|kscan|clkD|count\(26) & (!\kdecode|kscan|clkD|Add0~51\ & VCC))
-- \kdecode|kscan|clkD|Add0~53\ = CARRY((\kdecode|kscan|clkD|count\(26) & !\kdecode|kscan|clkD|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(26),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~51\,
	combout => \kdecode|kscan|clkD|Add0~52_combout\,
	cout => \kdecode|kscan|clkD|Add0~53\);

-- Location: FF_X45_Y52_N21
\kdecode|kscan|clkD|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(26));

-- Location: LCCOMB_X45_Y52_N22
\kdecode|kscan|clkD|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~54_combout\ = (\kdecode|kscan|clkD|count\(27) & (!\kdecode|kscan|clkD|Add0~53\)) # (!\kdecode|kscan|clkD|count\(27) & ((\kdecode|kscan|clkD|Add0~53\) # (GND)))
-- \kdecode|kscan|clkD|Add0~55\ = CARRY((!\kdecode|kscan|clkD|Add0~53\) # (!\kdecode|kscan|clkD|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(27),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~53\,
	combout => \kdecode|kscan|clkD|Add0~54_combout\,
	cout => \kdecode|kscan|clkD|Add0~55\);

-- Location: FF_X45_Y52_N23
\kdecode|kscan|clkD|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(27));

-- Location: LCCOMB_X45_Y52_N24
\kdecode|kscan|clkD|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~56_combout\ = (\kdecode|kscan|clkD|count\(28) & (\kdecode|kscan|clkD|Add0~55\ $ (GND))) # (!\kdecode|kscan|clkD|count\(28) & (!\kdecode|kscan|clkD|Add0~55\ & VCC))
-- \kdecode|kscan|clkD|Add0~57\ = CARRY((\kdecode|kscan|clkD|count\(28) & !\kdecode|kscan|clkD|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(28),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~55\,
	combout => \kdecode|kscan|clkD|Add0~56_combout\,
	cout => \kdecode|kscan|clkD|Add0~57\);

-- Location: FF_X45_Y52_N25
\kdecode|kscan|clkD|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(28));

-- Location: LCCOMB_X45_Y52_N26
\kdecode|kscan|clkD|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~58_combout\ = (\kdecode|kscan|clkD|count\(29) & (!\kdecode|kscan|clkD|Add0~57\)) # (!\kdecode|kscan|clkD|count\(29) & ((\kdecode|kscan|clkD|Add0~57\) # (GND)))
-- \kdecode|kscan|clkD|Add0~59\ = CARRY((!\kdecode|kscan|clkD|Add0~57\) # (!\kdecode|kscan|clkD|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(29),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~57\,
	combout => \kdecode|kscan|clkD|Add0~58_combout\,
	cout => \kdecode|kscan|clkD|Add0~59\);

-- Location: FF_X45_Y52_N27
\kdecode|kscan|clkD|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(29));

-- Location: LCCOMB_X45_Y52_N28
\kdecode|kscan|clkD|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~60_combout\ = (\kdecode|kscan|clkD|count\(30) & (\kdecode|kscan|clkD|Add0~59\ $ (GND))) # (!\kdecode|kscan|clkD|count\(30) & (!\kdecode|kscan|clkD|Add0~59\ & VCC))
-- \kdecode|kscan|clkD|Add0~61\ = CARRY((\kdecode|kscan|clkD|count\(30) & !\kdecode|kscan|clkD|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|clkD|count\(30),
	datad => VCC,
	cin => \kdecode|kscan|clkD|Add0~59\,
	combout => \kdecode|kscan|clkD|Add0~60_combout\,
	cout => \kdecode|kscan|clkD|Add0~61\);

-- Location: FF_X45_Y52_N29
\kdecode|kscan|clkD|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(30));

-- Location: LCCOMB_X45_Y52_N30
\kdecode|kscan|clkD|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Add0~62_combout\ = \kdecode|kscan|clkD|count\(31) $ (\kdecode|kscan|clkD|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(31),
	cin => \kdecode|kscan|clkD|Add0~61\,
	combout => \kdecode|kscan|clkD|Add0~62_combout\);

-- Location: FF_X45_Y52_N31
\kdecode|kscan|clkD|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(31));

-- Location: LCCOMB_X44_Y52_N24
\kdecode|kscan|clkD|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~8_combout\ = (!\kdecode|kscan|clkD|count\(31) & (!\kdecode|kscan|clkD|count\(28) & (!\kdecode|kscan|clkD|count\(29) & !\kdecode|kscan|clkD|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(31),
	datab => \kdecode|kscan|clkD|count\(28),
	datac => \kdecode|kscan|clkD|count\(29),
	datad => \kdecode|kscan|clkD|count\(30),
	combout => \kdecode|kscan|clkD|Equal0~8_combout\);

-- Location: LCCOMB_X44_Y52_N14
\kdecode|kscan|clkD|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~7_combout\ = (\kdecode|kscan|clkD|count\(24) & (!\kdecode|kscan|clkD|count\(25) & (!\kdecode|kscan|clkD|count\(26) & !\kdecode|kscan|clkD|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(24),
	datab => \kdecode|kscan|clkD|count\(25),
	datac => \kdecode|kscan|clkD|count\(26),
	datad => \kdecode|kscan|clkD|count\(27),
	combout => \kdecode|kscan|clkD|Equal0~7_combout\);

-- Location: LCCOMB_X44_Y52_N2
\kdecode|kscan|clkD|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~5_combout\ = (\kdecode|kscan|clkD|count\(19) & (\kdecode|kscan|clkD|count\(18) & (\kdecode|kscan|clkD|count\(16) & !\kdecode|kscan|clkD|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(19),
	datab => \kdecode|kscan|clkD|count\(18),
	datac => \kdecode|kscan|clkD|count\(16),
	datad => \kdecode|kscan|clkD|count\(17),
	combout => \kdecode|kscan|clkD|Equal0~5_combout\);

-- Location: LCCOMB_X44_Y52_N26
\kdecode|kscan|clkD|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~9_combout\ = (\kdecode|kscan|clkD|Equal0~6_combout\ & (\kdecode|kscan|clkD|Equal0~8_combout\ & (\kdecode|kscan|clkD|Equal0~7_combout\ & \kdecode|kscan|clkD|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~6_combout\,
	datab => \kdecode|kscan|clkD|Equal0~8_combout\,
	datac => \kdecode|kscan|clkD|Equal0~7_combout\,
	datad => \kdecode|kscan|clkD|Equal0~5_combout\,
	combout => \kdecode|kscan|clkD|Equal0~9_combout\);

-- Location: LCCOMB_X44_Y53_N10
\kdecode|kscan|clkD|count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|count~12_combout\ = (\kdecode|kscan|clkD|Add0~28_combout\ & ((!\kdecode|kscan|clkD|Equal0~4_combout\) # (!\kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~9_combout\,
	datac => \kdecode|kscan|clkD|Equal0~4_combout\,
	datad => \kdecode|kscan|clkD|Add0~28_combout\,
	combout => \kdecode|kscan|clkD|count~12_combout\);

-- Location: FF_X44_Y53_N11
\kdecode|kscan|clkD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|count~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|count\(14));

-- Location: LCCOMB_X44_Y53_N12
\kdecode|kscan|clkD|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~3_combout\ = (\kdecode|kscan|clkD|count\(14) & (\kdecode|kscan|clkD|count\(12) & (!\kdecode|kscan|clkD|count\(15) & \kdecode|kscan|clkD|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(14),
	datab => \kdecode|kscan|clkD|count\(12),
	datac => \kdecode|kscan|clkD|count\(15),
	datad => \kdecode|kscan|clkD|count\(13),
	combout => \kdecode|kscan|clkD|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y53_N20
\kdecode|kscan|clkD|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~0_combout\ = (\kdecode|kscan|clkD|count\(6) & (!\kdecode|kscan|clkD|count\(5) & (!\kdecode|kscan|clkD|count\(7) & !\kdecode|kscan|clkD|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(6),
	datab => \kdecode|kscan|clkD|count\(5),
	datac => \kdecode|kscan|clkD|count\(7),
	datad => \kdecode|kscan|clkD|count\(8),
	combout => \kdecode|kscan|clkD|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y53_N22
\kdecode|kscan|clkD|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~1_combout\ = (!\kdecode|kscan|clkD|count\(2) & (!\kdecode|kscan|clkD|count\(4) & (!\kdecode|kscan|clkD|count\(1) & !\kdecode|kscan|clkD|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(2),
	datab => \kdecode|kscan|clkD|count\(4),
	datac => \kdecode|kscan|clkD|count\(1),
	datad => \kdecode|kscan|clkD|count\(3),
	combout => \kdecode|kscan|clkD|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y53_N18
\kdecode|kscan|clkD|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~2_combout\ = (\kdecode|kscan|clkD|count\(11) & (!\kdecode|kscan|clkD|count\(9) & (!\kdecode|kscan|clkD|count\(10) & \kdecode|kscan|clkD|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|count\(11),
	datab => \kdecode|kscan|clkD|count\(9),
	datac => \kdecode|kscan|clkD|count\(10),
	datad => \kdecode|kscan|clkD|count\(0),
	combout => \kdecode|kscan|clkD|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y53_N30
\kdecode|kscan|clkD|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|Equal0~4_combout\ = (\kdecode|kscan|clkD|Equal0~3_combout\ & (\kdecode|kscan|clkD|Equal0~0_combout\ & (\kdecode|kscan|clkD|Equal0~1_combout\ & \kdecode|kscan|clkD|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~3_combout\,
	datab => \kdecode|kscan|clkD|Equal0~0_combout\,
	datac => \kdecode|kscan|clkD|Equal0~1_combout\,
	datad => \kdecode|kscan|clkD|Equal0~2_combout\,
	combout => \kdecode|kscan|clkD|Equal0~4_combout\);

-- Location: LCCOMB_X44_Y53_N14
\kdecode|kscan|clkD|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|tmp~0_combout\ = \kdecode|kscan|clkD|tmp~q\ $ (((\kdecode|kscan|clkD|Equal0~4_combout\ & \kdecode|kscan|clkD|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|clkD|Equal0~4_combout\,
	datac => \kdecode|kscan|clkD|tmp~q\,
	datad => \kdecode|kscan|clkD|Equal0~9_combout\,
	combout => \kdecode|kscan|clkD|tmp~0_combout\);

-- Location: LCCOMB_X44_Y53_N2
\kdecode|kscan|clkD|tmp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|clkD|tmp~feeder_combout\ = \kdecode|kscan|clkD|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kscan|clkD|tmp~0_combout\,
	combout => \kdecode|kscan|clkD|tmp~feeder_combout\);

-- Location: FF_X44_Y53_N3
\kdecode|kscan|clkD|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kscan|clkD|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|clkD|tmp~q\);

-- Location: CLKCTRL_G13
\kdecode|kscan|clkD|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \kdecode|kscan|clkD|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \kdecode|kscan|clkD|tmp~clkctrl_outclk\);

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

-- Location: LCCOMB_X50_Y40_N12
\kdecode|kscan|mux|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|mux|Y~0_combout\ = (!\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ & ((\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & ((\I[1]~input_o\))) # (!\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & (\I[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \I[0]~input_o\,
	datad => \I[1]~input_o\,
	combout => \kdecode|kscan|mux|Y~0_combout\);

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

-- Location: LCCOMB_X50_Y40_N30
\kdecode|kscan|mux|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|mux|Y~1_combout\ = (\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ & ((\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & ((\I[3]~input_o\))) # (!\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & (\I[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \I[2]~input_o\,
	datad => \I[3]~input_o\,
	combout => \kdecode|kscan|mux|Y~1_combout\);

-- Location: LCCOMB_X50_Y40_N14
\kdecode|kctrl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kctrl|Selector1~0_combout\ = (\kdecode|kscan|mux|Y~0_combout\) # ((\kdecode|kctrl|CurrentState.STATE_00~q\) # (\kdecode|kscan|mux|Y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|mux|Y~0_combout\,
	datac => \kdecode|kctrl|CurrentState.STATE_00~q\,
	datad => \kdecode|kscan|mux|Y~1_combout\,
	combout => \kdecode|kctrl|Selector1~0_combout\);

-- Location: LCCOMB_X51_Y40_N2
\kdecode|kctrl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kctrl|Selector1~1_combout\ = (!\RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\ & ((\kdecode|kctrl|CurrentState.STATE_01~q\) # (!\kdecode|kctrl|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kctrl|Selector1~0_combout\,
	datac => \kdecode|kctrl|CurrentState.STATE_01~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	combout => \kdecode|kctrl|Selector1~1_combout\);

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

-- Location: FF_X51_Y40_N3
\kdecode|kctrl|CurrentState.STATE_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \kdecode|kctrl|Selector1~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kctrl|CurrentState.STATE_01~q\);

-- Location: IOIBUF_X51_Y54_N22
\kack~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_kack,
	o => \kack~input_o\);

-- Location: LCCOMB_X51_Y42_N18
\OutputBuff|OutputBufferCtrl|NextState.STATE_01~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutputBuff|OutputBufferCtrl|NextState.STATE_01~0_combout\ = (!\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ & \RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\,
	combout => \OutputBuff|OutputBufferCtrl|NextState.STATE_01~0_combout\);

-- Location: FF_X51_Y42_N7
\OutputBuff|OutputBufferCtrl|CurrentState.STATE_01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \OutputBuff|OutputBufferCtrl|NextState.STATE_01~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\);

-- Location: LCCOMB_X51_Y42_N28
\OutputBuff|OutputBufferCtrl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutputBuff|OutputBufferCtrl|Selector1~0_combout\ = (\OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\) # ((!\kack~input_o\ & \OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kack~input_o\,
	datac => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~q\,
	datad => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\,
	combout => \OutputBuff|OutputBufferCtrl|Selector1~0_combout\);

-- Location: FF_X51_Y42_N19
\OutputBuff|OutputBufferCtrl|CurrentState.STATE_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \OutputBuff|OutputBufferCtrl|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\);

-- Location: LCCOMB_X51_Y42_N14
\OutputBuff|OutputBufferCtrl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OutputBuff|OutputBufferCtrl|Selector0~0_combout\ = (\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ & (((!\OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\) # (!\kack~input_o\)))) # (!\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ & 
-- (\RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\ & ((!\OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\) # (!\kack~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datab => \RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\,
	datac => \kack~input_o\,
	datad => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_10~q\,
	combout => \OutputBuff|OutputBufferCtrl|Selector0~0_combout\);

-- Location: FF_X51_Y42_N23
\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \OutputBuff|OutputBufferCtrl|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\);

-- Location: CLKCTRL_G5
\RingBuff|RingBufferCtrl|Selector9~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RingBuff|RingBufferCtrl|Selector9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\);

-- Location: LCCOMB_X51_Y42_N26
\RingBuff|RingBufferCtrl|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|Selector1~1_combout\ = (!\kdecode|kctrl|CurrentState.STATE_01~q\ & \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kctrl|CurrentState.STATE_01~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	combout => \RingBuff|RingBufferCtrl|Selector1~1_combout\);

-- Location: LCCOMB_X51_Y42_N8
\RingBuff|RingBufferCtrl|NextState.STATE_110_183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_110_183~combout\ = (GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & ((\RingBuff|RingBufferCtrl|Selector1~1_combout\))) # (!GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & 
-- (\RingBuff|RingBufferCtrl|NextState.STATE_110_183~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|NextState.STATE_110_183~combout\,
	datab => \RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\,
	datad => \RingBuff|RingBufferCtrl|Selector1~1_combout\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_110_183~combout\);

-- Location: LCCOMB_X51_Y42_N2
\RingBuff|RingBufferCtrl|CurrentState.STATE_110~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_110~feeder_combout\ = \RingBuff|RingBufferCtrl|NextState.STATE_110_183~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RingBuff|RingBufferCtrl|NextState.STATE_110_183~combout\,
	combout => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~feeder_combout\);

-- Location: FF_X51_Y42_N3
\RingBuff|RingBufferCtrl|CurrentState.STATE_110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\);

-- Location: LCCOMB_X50_Y42_N4
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0_combout\ = !\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0_combout\);

-- Location: FF_X50_Y42_N5
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \RingBuff|MemoryAddressCtrl|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X50_Y42_N26
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|HA2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|HA2|S~combout\ = \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\ $ (((\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & ((\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\))) # 
-- (!\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & (\RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ & !\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datab => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	datac => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\,
	datad => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|HA2|S~combout\);

-- Location: FF_X50_Y42_N27
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|HA2|S~combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \RingBuff|MemoryAddressCtrl|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X50_Y42_N22
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\ = (\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\ & (((\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\) # (!\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\)))) # 
-- (!\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\ & (!\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & ((\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\) # (!\RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datab => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\);

-- Location: LCCOMB_X50_Y42_N12
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|HA2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|HA2|S~combout\ = \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\ $ (\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ $ 
-- (!\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\,
	datac => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|HA2|S~combout\);

-- Location: FF_X50_Y42_N13
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA3|HA2|S~combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \RingBuff|MemoryAddressCtrl|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X51_Y42_N30
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|HA2|S\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|HA2|S~combout\ = \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\ $ (((\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ & (\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & 
-- \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\)) # (!\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\ & (!\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & 
-- !\RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\,
	datab => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	datac => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datad => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA2|Co~combout\,
	combout => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|HA2|S~combout\);

-- Location: FF_X51_Y42_N31
\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_AS|AS_Adder|FA4|HA2|S~combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \RingBuff|MemoryAddressCtrl|s_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X51_Y42_N16
\RingBuff|RingBufferCtrl|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|Selector9~0_combout\ = ((\RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\) # ((!\kdecode|kctrl|CurrentState.STATE_01~q\) # (!\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\))) # 
-- (!\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datab => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	datac => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datad => \kdecode|kctrl|CurrentState.STATE_01~q\,
	combout => \RingBuff|RingBufferCtrl|Selector9~0_combout\);

-- Location: LCCOMB_X51_Y42_N4
\RingBuff|MemoryAddressCtrl|empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|empty~0_combout\ = (\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\) # ((\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\) # ((\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\) # 
-- (\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD3|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD1|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datad => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD2|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|empty~0_combout\);

-- Location: LCCOMB_X51_Y42_N22
\RingBuff|RingBufferCtrl|NextState.STATE_100~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\ = (\kdecode|kctrl|CurrentState.STATE_01~q\ & (((\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\)))) # (!\kdecode|kctrl|CurrentState.STATE_01~q\ & 
-- (\RingBuff|MemoryAddressCtrl|empty~0_combout\ & (!\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|empty~0_combout\,
	datab => \kdecode|kctrl|CurrentState.STATE_01~q\,
	datac => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datad => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\);

-- Location: LCCOMB_X52_Y41_N20
\RingBuff|RingBufferCtrl|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|comb~2_combout\ = ((\RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\) # (!\RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\)) # (!\RingBuff|RingBufferCtrl|Selector9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|Selector9~0_combout\,
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	datad => \RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\,
	combout => \RingBuff|RingBufferCtrl|comb~2_combout\);

-- Location: LCCOMB_X52_Y41_N28
\RingBuff|RingBufferCtrl|NextState.STATE_000~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\ = (\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\ & \kdecode|kctrl|CurrentState.STATE_01~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datac => \kdecode|kctrl|CurrentState.STATE_01~q\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\);

-- Location: LCCOMB_X52_Y41_N26
\RingBuff|RingBufferCtrl|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|comb~1_combout\ = (!\RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\ & ((\RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\) # ((\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\ & 
-- \RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datab => \RingBuff|RingBufferCtrl|NextState.STATE_000~0_combout\,
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	datad => \RingBuff|RingBufferCtrl|NextState.STATE_100~0_combout\,
	combout => \RingBuff|RingBufferCtrl|comb~1_combout\);

-- Location: LCCOMB_X52_Y41_N10
\RingBuff|RingBufferCtrl|NextState.STATE_100_218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_100_218~combout\ = (\RingBuff|RingBufferCtrl|comb~1_combout\ & ((\RingBuff|RingBufferCtrl|NextState.STATE_100_218~combout\) # (!\RingBuff|RingBufferCtrl|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|comb~2_combout\,
	datac => \RingBuff|RingBufferCtrl|comb~1_combout\,
	datad => \RingBuff|RingBufferCtrl|NextState.STATE_100_218~combout\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_100_218~combout\);

-- Location: FF_X51_Y42_N25
\RingBuff|RingBufferCtrl|CurrentState.STATE_100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RingBuff|RingBufferCtrl|NextState.STATE_100_218~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\);

-- Location: LCCOMB_X51_Y42_N24
\RingBuff|RingBufferCtrl|NextState.STATE_101_202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_101_202~combout\ = (GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & ((\RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\))) # (!GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & 
-- (\RingBuff|RingBufferCtrl|NextState.STATE_101_202~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|NextState.STATE_101_202~combout\,
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_100~q\,
	datad => \RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_101_202~combout\);

-- Location: FF_X51_Y42_N9
\RingBuff|RingBufferCtrl|CurrentState.STATE_101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RingBuff|RingBufferCtrl|NextState.STATE_101_202~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\);

-- Location: LCCOMB_X51_Y42_N12
\RingBuff|MemoryAddressCtrl|s_enable~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|s_enable~0_combout\ = (\RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\) # (\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	combout => \RingBuff|MemoryAddressCtrl|s_enable~0_combout\);

-- Location: LCCOMB_X51_Y42_N20
\RingBuff|RingBufferCtrl|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|Selector8~0_combout\ = (!\kdecode|kctrl|CurrentState.STATE_01~q\ & !\RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kctrl|CurrentState.STATE_01~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	combout => \RingBuff|RingBufferCtrl|Selector8~0_combout\);

-- Location: LCCOMB_X51_Y42_N10
\RingBuff|RingBufferCtrl|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|Selector8~1_combout\ = (\RingBuff|MemoryAddressCtrl|s_enable~0_combout\) # ((\RingBuff|RingBufferCtrl|Selector8~0_combout\ & ((\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\) # 
-- (!\RingBuff|MemoryAddressCtrl|empty~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|s_enable~0_combout\,
	datab => \RingBuff|MemoryAddressCtrl|empty~0_combout\,
	datac => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	datad => \RingBuff|RingBufferCtrl|Selector8~0_combout\,
	combout => \RingBuff|RingBufferCtrl|Selector8~1_combout\);

-- Location: LCCOMB_X51_Y42_N0
\RingBuff|RingBufferCtrl|NextState.STATE_000_291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_000_291~combout\ = (GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & ((\RingBuff|RingBufferCtrl|Selector8~1_combout\))) # (!GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & 
-- (\RingBuff|RingBufferCtrl|NextState.STATE_000_291~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|RingBufferCtrl|NextState.STATE_000_291~combout\,
	datac => \RingBuff|RingBufferCtrl|Selector8~1_combout\,
	datad => \RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_000_291~combout\);

-- Location: LCCOMB_X52_Y42_N22
\RingBuff|RingBufferCtrl|CurrentState.STATE_000~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_000~0_combout\ = !\RingBuff|RingBufferCtrl|NextState.STATE_000_291~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RingBuff|RingBufferCtrl|NextState.STATE_000_291~combout\,
	combout => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~0_combout\);

-- Location: FF_X52_Y42_N23
\RingBuff|RingBufferCtrl|CurrentState.STATE_000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\);

-- Location: LCCOMB_X52_Y41_N24
\RingBuff|RingBufferCtrl|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|comb~0_combout\ = (!\RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\ & (\kdecode|kctrl|CurrentState.STATE_01~q\ & ((\OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\) # 
-- (!\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	datab => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datac => \kdecode|kctrl|CurrentState.STATE_01~q\,
	datad => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_00~q\,
	combout => \RingBuff|RingBufferCtrl|comb~0_combout\);

-- Location: LCCOMB_X52_Y41_N22
\RingBuff|RingBufferCtrl|NextState.STATE_001~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\ = (!\RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\ & (!\RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\ & \kdecode|kctrl|CurrentState.STATE_01~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|MemoryAddressCtrl|UpDownCount|EC_Reg|FFD4|Q~q\,
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_000~q\,
	datad => \kdecode|kctrl|CurrentState.STATE_01~q\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\);

-- Location: LCCOMB_X52_Y41_N16
\RingBuff|RingBufferCtrl|NextState.STATE_001_272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_001_272~combout\ = (\RingBuff|RingBufferCtrl|comb~0_combout\ & ((\RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\) # (\RingBuff|RingBufferCtrl|NextState.STATE_001_272~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|RingBufferCtrl|comb~0_combout\,
	datac => \RingBuff|RingBufferCtrl|NextState.STATE_001~0_combout\,
	datad => \RingBuff|RingBufferCtrl|NextState.STATE_001_272~combout\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_001_272~combout\);

-- Location: FF_X50_Y41_N5
\RingBuff|RingBufferCtrl|CurrentState.STATE_001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RingBuff|RingBufferCtrl|NextState.STATE_001_272~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\);

-- Location: LCCOMB_X51_Y40_N26
\RingBuff|RingBufferCtrl|NextState.STATE_010_256\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_010_256~combout\ = (GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & (\RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\)) # (!GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & 
-- ((\RingBuff|RingBufferCtrl|NextState.STATE_010_256~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\,
	datac => \RingBuff|RingBufferCtrl|NextState.STATE_010_256~combout\,
	datad => \RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_010_256~combout\);

-- Location: FF_X51_Y40_N7
\RingBuff|RingBufferCtrl|CurrentState.STATE_010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \RingBuff|RingBufferCtrl|NextState.STATE_010_256~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\);

-- Location: LCCOMB_X51_Y40_N22
\RingBuff|RingBufferCtrl|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|Selector4~0_combout\ = (\RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\) # ((\kdecode|kctrl|CurrentState.STATE_01~q\ & \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kctrl|CurrentState.STATE_01~q\,
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	combout => \RingBuff|RingBufferCtrl|Selector4~0_combout\);

-- Location: LCCOMB_X51_Y40_N0
\RingBuff|RingBufferCtrl|NextState.STATE_011_237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|NextState.STATE_011_237~combout\ = (GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & ((\RingBuff|RingBufferCtrl|Selector4~0_combout\))) # (!GLOBAL(\RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\) & 
-- (\RingBuff|RingBufferCtrl|NextState.STATE_011_237~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|RingBufferCtrl|NextState.STATE_011_237~combout\,
	datac => \RingBuff|RingBufferCtrl|Selector4~0_combout\,
	datad => \RingBuff|RingBufferCtrl|Selector9~0clkctrl_outclk\,
	combout => \RingBuff|RingBufferCtrl|NextState.STATE_011_237~combout\);

-- Location: FF_X50_Y41_N27
\RingBuff|RingBufferCtrl|CurrentState.STATE_011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RingBuff|RingBufferCtrl|NextState.STATE_011_237~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\);

-- Location: LCCOMB_X50_Y42_N18
\RingBuff|RingBufferCtrl|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|Selector1~0_combout\ = (\RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\ & \kdecode|kctrl|CurrentState.STATE_01~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	datad => \kdecode|kctrl|CurrentState.STATE_01~q\,
	combout => \RingBuff|RingBufferCtrl|Selector1~0_combout\);

-- Location: LCCOMB_X50_Y42_N28
\kdecode|kctrl|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kctrl|Selector2~0_combout\ = (\RingBuff|RingBufferCtrl|Selector1~0_combout\) # ((!\kdecode|kscan|mux|Y~0_combout\ & (!\kdecode|kscan|mux|Y~1_combout\ & \kdecode|kctrl|CurrentState.STATE_10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|mux|Y~0_combout\,
	datab => \kdecode|kscan|mux|Y~1_combout\,
	datac => \kdecode|kctrl|CurrentState.STATE_10~q\,
	datad => \RingBuff|RingBufferCtrl|Selector1~0_combout\,
	combout => \kdecode|kctrl|Selector2~0_combout\);

-- Location: FF_X50_Y42_N29
\kdecode|kctrl|CurrentState.STATE_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kctrl|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kctrl|CurrentState.STATE_10~q\);

-- Location: LCCOMB_X50_Y40_N28
\kdecode|kctrl|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kctrl|Selector0~0_combout\ = (\kdecode|kctrl|CurrentState.STATE_00~q\ & ((\kdecode|kctrl|CurrentState.STATE_10~q\))) # (!\kdecode|kctrl|CurrentState.STATE_00~q\ & (\RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kctrl|CurrentState.STATE_00~q\,
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	datad => \kdecode|kctrl|CurrentState.STATE_10~q\,
	combout => \kdecode|kctrl|Selector0~0_combout\);

-- Location: LCCOMB_X50_Y40_N20
\kdecode|kctrl|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kctrl|Selector0~1_combout\ = (\kdecode|kctrl|Selector0~0_combout\ & (!\kdecode|kscan|mux|Y~0_combout\ & (\kdecode|kctrl|CurrentState.STATE_00~q\ & !\kdecode|kscan|mux|Y~1_combout\))) # (!\kdecode|kctrl|Selector0~0_combout\ & 
-- ((\kdecode|kctrl|CurrentState.STATE_00~q\) # ((!\kdecode|kscan|mux|Y~0_combout\ & !\kdecode|kscan|mux|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|mux|Y~0_combout\,
	datab => \kdecode|kctrl|Selector0~0_combout\,
	datac => \kdecode|kctrl|CurrentState.STATE_00~q\,
	datad => \kdecode|kscan|mux|Y~1_combout\,
	combout => \kdecode|kctrl|Selector0~1_combout\);

-- Location: FF_X50_Y40_N21
\kdecode|kctrl|CurrentState.STATE_00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \kdecode|kctrl|Selector0~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kctrl|CurrentState.STATE_00~q\);

-- Location: LCCOMB_X50_Y40_N24
\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0_combout\ = \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ $ (!\kdecode|kctrl|CurrentState.STATE_00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datad => \kdecode|kctrl|CurrentState.STATE_00~q\,
	combout => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0_combout\);

-- Location: FF_X50_Y40_N25
\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kdecode|kscan|clkD|tmp~clkctrl_outclk\,
	d => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\);

-- Location: LCCOMB_X50_Y40_N6
\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0_combout\ = \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ $ (((\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & !\kdecode|kctrl|CurrentState.STATE_00~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datad => \kdecode|kctrl|CurrentState.STATE_00~q\,
	combout => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0_combout\);

-- Location: FF_X50_Y40_N7
\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kdecode|kscan|clkD|tmp~clkctrl_outclk\,
	d => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\);

-- Location: LCCOMB_X50_Y40_N4
\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0_combout\ = \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ $ (((\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ & (\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\ & !\kdecode|kctrl|CurrentState.STATE_00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datad => \kdecode|kctrl|CurrentState.STATE_00~q\,
	combout => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0_combout\);

-- Location: FF_X50_Y40_N5
\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kdecode|kscan|clkD|tmp~clkctrl_outclk\,
	d => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\);

-- Location: LCCOMB_X50_Y40_N10
\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\ = (!\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\) # (!\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datad => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	combout => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\);

-- Location: LCCOMB_X50_Y40_N2
\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~1_combout\ = \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\ $ (((!\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\ & (\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\ & !\kdecode|kctrl|CurrentState.STATE_00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~0_combout\,
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datad => \kdecode|kctrl|CurrentState.STATE_00~q\,
	combout => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~1_combout\);

-- Location: FF_X50_Y40_N3
\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \kdecode|kscan|clkD|tmp~clkctrl_outclk\,
	d => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\);

-- Location: LCCOMB_X50_Y39_N4
\kdecode|kscan|dec|O~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|dec|O~0_combout\ = (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\) # (\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \kdecode|kscan|dec|O~0_combout\);

-- Location: LCCOMB_X50_Y39_N26
\kdecode|kscan|dec|O~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|dec|O~1_combout\ = (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ & !\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \kdecode|kscan|dec|O~1_combout\);

-- Location: LCCOMB_X50_Y39_N28
\kdecode|kscan|dec|O~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|dec|O~2_combout\ = (!\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ & \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \kdecode|kscan|dec|O~2_combout\);

-- Location: LCCOMB_X50_Y39_N18
\kdecode|kscan|dec|O~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \kdecode|kscan|dec|O~3_combout\ = (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\ & \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \kdecode|kscan|dec|O~3_combout\);

-- Location: CLKCTRL_G0
\OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y42_N6
\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ = \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ $ (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	datad => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\);

-- Location: FF_X51_Y40_N5
\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\);

-- Location: LCCOMB_X51_Y40_N18
\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ = \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ $ (((\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\);

-- Location: FF_X51_Y40_N19
\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X51_Y40_N8
\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ = \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ $ (((\RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & 
-- \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|CurrentState.STATE_110~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\);

-- Location: FF_X51_Y40_N9
\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X50_Y42_N8
\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\ = \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\ $ (\RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	combout => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\);

-- Location: FF_X50_Y42_N9
\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\);

-- Location: LCCOMB_X51_Y41_N12
\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\ = \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\ $ (((\RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ & \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datac => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\);

-- Location: FF_X51_Y41_N13
\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\);

-- Location: LCCOMB_X50_Y42_N14
\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\ = \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\ $ (((\RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\ & (\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|CurrentState.STATE_101~q\,
	datab => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\);

-- Location: FF_X50_Y42_N15
\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\);

-- Location: LCCOMB_X50_Y41_N28
\RingBuff|RingBufferCtrl|selPG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|RingBufferCtrl|selPG~0_combout\ = (\RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\) # ((\RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\) # (\RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|RingBufferCtrl|CurrentState.STATE_011~q\,
	datab => \RingBuff|RingBufferCtrl|CurrentState.STATE_001~q\,
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \RingBuff|RingBufferCtrl|selPG~0_combout\);

-- Location: LCCOMB_X51_Y41_N4
\RingBuff|MemoryAddressCtrl|mux|R[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ = (\RingBuff|RingBufferCtrl|selPG~0_combout\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\)) # (!\RingBuff|RingBufferCtrl|selPG~0_combout\ & 
-- ((\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \RingBuff|RingBufferCtrl|selPG~0_combout\,
	combout => \RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\);

-- Location: LCCOMB_X51_Y40_N16
\rtl~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X51_Y41_N26
\RingBuff|R|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~24_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\))) # (!GLOBAL(\rtl~9clkctrl_outclk\) & (\RingBuff|R|ram~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~24_combout\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datad => \rtl~9clkctrl_outclk\,
	combout => \RingBuff|R|ram~24_combout\);

-- Location: LCCOMB_X50_Y41_N22
\RingBuff|MemoryAddressCtrl|mux|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ = (\RingBuff|RingBufferCtrl|selPG~0_combout\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\)) # (!\RingBuff|RingBufferCtrl|selPG~0_combout\ & 
-- ((\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \RingBuff|RingBufferCtrl|selPG~0_combout\,
	datad => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\);

-- Location: LCCOMB_X51_Y40_N28
\rtl~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X50_Y40_N22
\RingBuff|R|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~16_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\RingBuff|R|ram~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~16_combout\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \RingBuff|R|ram~16_combout\);

-- Location: LCCOMB_X50_Y41_N8
\RingBuff|MemoryAddressCtrl|mux|R[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ = (\RingBuff|RingBufferCtrl|selPG~0_combout\ & ((\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\))) # (!\RingBuff|RingBufferCtrl|selPG~0_combout\ & 
-- (\RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|getCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datad => \RingBuff|RingBufferCtrl|selPG~0_combout\,
	combout => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\);

-- Location: LCCOMB_X51_Y41_N30
\RingBuff|R|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~32_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & 
-- (\RingBuff|R|ram~24_combout\)) # (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\RingBuff|R|ram~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~24_combout\,
	datab => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \RingBuff|R|ram~16_combout\,
	datad => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \RingBuff|R|ram~32_combout\);

-- Location: LCCOMB_X51_Y40_N14
\rtl~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & 
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X50_Y39_N20
\RingBuff|R|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~28_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\RingBuff|R|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \RingBuff|R|ram~28_combout\,
	combout => \RingBuff|R|ram~28_combout\);

-- Location: LCCOMB_X51_Y40_N10
\rtl~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X50_Y40_N8
\RingBuff|R|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~20_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\RingBuff|R|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~8clkctrl_outclk\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datad => \RingBuff|R|ram~20_combout\,
	combout => \RingBuff|R|ram~20_combout\);

-- Location: LCCOMB_X50_Y41_N14
\RingBuff|R|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~33_combout\ = (\RingBuff|R|ram~32_combout\ & ((\RingBuff|R|ram~28_combout\) # ((!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\RingBuff|R|ram~32_combout\ & (((\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & 
-- \RingBuff|R|ram~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~32_combout\,
	datab => \RingBuff|R|ram~28_combout\,
	datac => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \RingBuff|R|ram~20_combout\,
	combout => \RingBuff|R|ram~33_combout\);

-- Location: LCCOMB_X51_Y40_N4
\rtl~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~14_combout\ = (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \rtl~14_combout\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X49_Y41_N26
\RingBuff|R|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~0_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & (\RingBuff|R|ram~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~0_combout\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \RingBuff|R|ram~0_combout\);

-- Location: LCCOMB_X51_Y40_N20
\rtl~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~13_combout\ = (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \rtl~13_combout\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X49_Y41_N20
\RingBuff|R|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~4_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\))) # (!GLOBAL(\rtl~13clkctrl_outclk\) & (\RingBuff|R|ram~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|R|ram~4_combout\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \RingBuff|R|ram~4_combout\);

-- Location: LCCOMB_X50_Y41_N12
\RingBuff|R|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~34_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\) # ((\RingBuff|R|ram~4_combout\)))) # (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & 
-- (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\RingBuff|R|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datab => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datac => \RingBuff|R|ram~0_combout\,
	datad => \RingBuff|R|ram~4_combout\,
	combout => \RingBuff|R|ram~34_combout\);

-- Location: LCCOMB_X51_Y40_N12
\rtl~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~12_combout\ = (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\ & 
-- \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	datad => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	combout => \rtl~12_combout\);

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X50_Y43_N0
\RingBuff|R|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~8_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\))) # (!GLOBAL(\rtl~12clkctrl_outclk\) & (\RingBuff|R|ram~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|R|ram~8_combout\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \RingBuff|R|ram~8_combout\);

-- Location: LCCOMB_X51_Y40_N6
\rtl~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~15_combout\ = (!\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\ & (\RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\ & (\RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\ & 
-- \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD2|Q~q\,
	datab => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD1|Q~q\,
	datac => \RingBuff|RingBufferCtrl|CurrentState.STATE_010~q\,
	datad => \RingBuff|MemoryAddressCtrl|putCount|C_CC|CC_Reg|R_FFD0|Q~q\,
	combout => \rtl~15_combout\);

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X49_Y40_N16
\RingBuff|R|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~12_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\RingBuff|R|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD1|Q~q\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \RingBuff|R|ram~12_combout\,
	combout => \RingBuff|R|ram~12_combout\);

-- Location: LCCOMB_X50_Y41_N18
\RingBuff|R|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~35_combout\ = (\RingBuff|R|ram~34_combout\ & (((\RingBuff|R|ram~12_combout\) # (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\RingBuff|R|ram~34_combout\ & (\RingBuff|R|ram~8_combout\ & 
-- (\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~34_combout\,
	datab => \RingBuff|R|ram~8_combout\,
	datac => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \RingBuff|R|ram~12_combout\,
	combout => \RingBuff|R|ram~35_combout\);

-- Location: LCCOMB_X50_Y41_N16
\RingBuff|R|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~36_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\RingBuff|R|ram~33_combout\)) # (!\RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\RingBuff|R|ram~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datab => \RingBuff|R|ram~33_combout\,
	datad => \RingBuff|R|ram~35_combout\,
	combout => \RingBuff|R|ram~36_combout\);

-- Location: FF_X50_Y41_N17
\OutputBuff|Reg|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\,
	d => \RingBuff|R|ram~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuff|Reg|FFD1|Q~q\);

-- Location: LCCOMB_X50_Y39_N22
\RingBuff|R|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~29_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\RingBuff|R|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \RingBuff|R|ram~29_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \RingBuff|R|ram~29_combout\);

-- Location: LCCOMB_X50_Y40_N18
\RingBuff|R|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~17_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\RingBuff|R|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \RingBuff|R|ram~17_combout\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \RingBuff|R|ram~17_combout\);

-- Location: LCCOMB_X49_Y41_N16
\RingBuff|R|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~25_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\RingBuff|R|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \RingBuff|R|ram~25_combout\,
	combout => \RingBuff|R|ram~25_combout\);

-- Location: LCCOMB_X50_Y41_N24
\RingBuff|R|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~37_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)) # (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & 
-- ((\RingBuff|R|ram~25_combout\))) # (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\RingBuff|R|ram~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datab => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datac => \RingBuff|R|ram~17_combout\,
	datad => \RingBuff|R|ram~25_combout\,
	combout => \RingBuff|R|ram~37_combout\);

-- Location: LCCOMB_X50_Y40_N16
\RingBuff|R|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~21_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\))) # (!GLOBAL(\rtl~8clkctrl_outclk\) & (\RingBuff|R|ram~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~8clkctrl_outclk\,
	datac => \RingBuff|R|ram~21_combout\,
	datad => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	combout => \RingBuff|R|ram~21_combout\);

-- Location: LCCOMB_X50_Y41_N10
\RingBuff|R|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~38_combout\ = (\RingBuff|R|ram~37_combout\ & ((\RingBuff|R|ram~29_combout\) # ((!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\RingBuff|R|ram~37_combout\ & (((\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & 
-- \RingBuff|R|ram~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~29_combout\,
	datab => \RingBuff|R|ram~37_combout\,
	datac => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \RingBuff|R|ram~21_combout\,
	combout => \RingBuff|R|ram~38_combout\);

-- Location: LCCOMB_X50_Y43_N30
\RingBuff|R|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~9_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\RingBuff|R|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datac => \RingBuff|R|ram~9_combout\,
	datad => \rtl~12clkctrl_outclk\,
	combout => \RingBuff|R|ram~9_combout\);

-- Location: LCCOMB_X50_Y41_N4
\RingBuff|R|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~1_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\)) # (!GLOBAL(\rtl~14clkctrl_outclk\) & ((\RingBuff|R|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datab => \RingBuff|R|ram~1_combout\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \RingBuff|R|ram~1_combout\);

-- Location: LCCOMB_X49_Y41_N10
\RingBuff|R|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~5_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\))) # (!GLOBAL(\rtl~13clkctrl_outclk\) & (\RingBuff|R|ram~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~5_combout\,
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \RingBuff|R|ram~5_combout\);

-- Location: LCCOMB_X50_Y41_N20
\RingBuff|R|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~39_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\) # ((\RingBuff|R|ram~5_combout\)))) # (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & 
-- (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\RingBuff|R|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datab => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datac => \RingBuff|R|ram~1_combout\,
	datad => \RingBuff|R|ram~5_combout\,
	combout => \RingBuff|R|ram~39_combout\);

-- Location: LCCOMB_X50_Y40_N0
\RingBuff|R|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~13_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & (\RingBuff|R|ram~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|R|ram~13_combout\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \kdecode|kscan|contador|U1|CC_Reg|FFD2|Q~q\,
	combout => \RingBuff|R|ram~13_combout\);

-- Location: LCCOMB_X50_Y41_N2
\RingBuff|R|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~40_combout\ = (\RingBuff|R|ram~39_combout\ & (((\RingBuff|R|ram~13_combout\) # (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\RingBuff|R|ram~39_combout\ & (\RingBuff|R|ram~9_combout\ & 
-- (\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~9_combout\,
	datab => \RingBuff|R|ram~39_combout\,
	datac => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \RingBuff|R|ram~13_combout\,
	combout => \RingBuff|R|ram~40_combout\);

-- Location: LCCOMB_X50_Y41_N30
\RingBuff|R|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~41_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\RingBuff|R|ram~38_combout\)) # (!\RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\RingBuff|R|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	datab => \RingBuff|R|ram~38_combout\,
	datac => \RingBuff|R|ram~40_combout\,
	combout => \RingBuff|R|ram~41_combout\);

-- Location: FF_X50_Y41_N31
\OutputBuff|Reg|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\,
	d => \RingBuff|R|ram~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuff|Reg|FFD2|Q~q\);

-- Location: LCCOMB_X51_Y41_N8
\RingBuff|R|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~26_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\RingBuff|R|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \RingBuff|R|ram~26_combout\,
	datad => \rtl~9clkctrl_outclk\,
	combout => \RingBuff|R|ram~26_combout\);

-- Location: LCCOMB_X52_Y40_N28
\RingBuff|R|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~18_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\RingBuff|R|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datab => \RingBuff|R|ram~18_combout\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \RingBuff|R|ram~18_combout\);

-- Location: LCCOMB_X51_Y41_N10
\RingBuff|R|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~42_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\) # ((\RingBuff|R|ram~26_combout\)))) # (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & 
-- (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\RingBuff|R|ram~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \RingBuff|R|ram~26_combout\,
	datad => \RingBuff|R|ram~18_combout\,
	combout => \RingBuff|R|ram~42_combout\);

-- Location: LCCOMB_X50_Y39_N16
\RingBuff|R|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~30_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\RingBuff|R|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \RingBuff|R|ram~30_combout\,
	combout => \RingBuff|R|ram~30_combout\);

-- Location: LCCOMB_X51_Y40_N24
\RingBuff|R|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~22_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\RingBuff|R|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \RingBuff|R|ram~22_combout\,
	combout => \RingBuff|R|ram~22_combout\);

-- Location: LCCOMB_X51_Y41_N28
\RingBuff|R|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~43_combout\ = (\RingBuff|R|ram~42_combout\ & ((\RingBuff|R|ram~30_combout\) # ((!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\RingBuff|R|ram~42_combout\ & (((\RingBuff|R|ram~22_combout\ & 
-- \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~42_combout\,
	datab => \RingBuff|R|ram~30_combout\,
	datac => \RingBuff|R|ram~22_combout\,
	datad => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	combout => \RingBuff|R|ram~43_combout\);

-- Location: LCCOMB_X52_Y41_N30
\RingBuff|R|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~2_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & (\RingBuff|R|ram~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~2_combout\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \RingBuff|R|ram~2_combout\);

-- Location: LCCOMB_X51_Y41_N18
\RingBuff|R|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~6_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~13clkctrl_outclk\) & ((\RingBuff|R|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~13clkctrl_outclk\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datad => \RingBuff|R|ram~6_combout\,
	combout => \RingBuff|R|ram~6_combout\);

-- Location: LCCOMB_X51_Y41_N14
\RingBuff|R|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~44_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)) # (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & 
-- ((\RingBuff|R|ram~6_combout\))) # (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (\RingBuff|R|ram~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \RingBuff|R|ram~2_combout\,
	datad => \RingBuff|R|ram~6_combout\,
	combout => \RingBuff|R|ram~44_combout\);

-- Location: LCCOMB_X51_Y40_N30
\RingBuff|R|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~14_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~15clkctrl_outclk\) & ((\RingBuff|R|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \RingBuff|R|ram~14_combout\,
	datad => \rtl~15clkctrl_outclk\,
	combout => \RingBuff|R|ram~14_combout\);

-- Location: LCCOMB_X51_Y43_N24
\RingBuff|R|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~10_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\RingBuff|R|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD3|Q~q\,
	datac => \rtl~12clkctrl_outclk\,
	datad => \RingBuff|R|ram~10_combout\,
	combout => \RingBuff|R|ram~10_combout\);

-- Location: LCCOMB_X51_Y41_N20
\RingBuff|R|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~45_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\RingBuff|R|ram~44_combout\ & (\RingBuff|R|ram~14_combout\)) # (!\RingBuff|R|ram~44_combout\ & ((\RingBuff|R|ram~10_combout\))))) # 
-- (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (\RingBuff|R|ram~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datab => \RingBuff|R|ram~44_combout\,
	datac => \RingBuff|R|ram~14_combout\,
	datad => \RingBuff|R|ram~10_combout\,
	combout => \RingBuff|R|ram~45_combout\);

-- Location: LCCOMB_X51_Y41_N0
\RingBuff|R|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~46_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\RingBuff|R|ram~43_combout\)) # (!\RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\RingBuff|R|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~43_combout\,
	datab => \RingBuff|R|ram~45_combout\,
	datac => \RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	combout => \RingBuff|R|ram~46_combout\);

-- Location: FF_X51_Y41_N1
\OutputBuff|Reg|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\,
	d => \RingBuff|R|ram~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuff|Reg|FFD3|Q~q\);

-- Location: LCCOMB_X51_Y41_N22
\RingBuff|R|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~27_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\RingBuff|R|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \RingBuff|R|ram~27_combout\,
	datad => \rtl~9clkctrl_outclk\,
	combout => \RingBuff|R|ram~27_combout\);

-- Location: LCCOMB_X50_Y40_N26
\RingBuff|R|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~19_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\RingBuff|R|ram~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~19_combout\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \RingBuff|R|ram~19_combout\);

-- Location: LCCOMB_X51_Y41_N6
\RingBuff|R|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~47_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))) # (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & ((\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & 
-- (\RingBuff|R|ram~27_combout\)) # (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\RingBuff|R|ram~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~27_combout\,
	datab => \RingBuff|R|ram~19_combout\,
	datac => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datad => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	combout => \RingBuff|R|ram~47_combout\);

-- Location: LCCOMB_X51_Y41_N16
\RingBuff|R|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~23_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\RingBuff|R|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \RingBuff|R|ram~23_combout\,
	combout => \RingBuff|R|ram~23_combout\);

-- Location: LCCOMB_X50_Y39_N30
\RingBuff|R|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~31_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\RingBuff|R|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \RingBuff|R|ram~31_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \RingBuff|R|ram~31_combout\);

-- Location: LCCOMB_X51_Y41_N24
\RingBuff|R|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~48_combout\ = (\RingBuff|R|ram~47_combout\ & (((\RingBuff|R|ram~31_combout\) # (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\)))) # (!\RingBuff|R|ram~47_combout\ & (\RingBuff|R|ram~23_combout\ & 
-- ((\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~47_combout\,
	datab => \RingBuff|R|ram~23_combout\,
	datac => \RingBuff|R|ram~31_combout\,
	datad => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	combout => \RingBuff|R|ram~48_combout\);

-- Location: LCCOMB_X49_Y40_N14
\RingBuff|R|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~15_combout\ = (GLOBAL(\rtl~15clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\))) # (!GLOBAL(\rtl~15clkctrl_outclk\) & (\RingBuff|R|ram~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|R|ram~15_combout\,
	datac => \rtl~15clkctrl_outclk\,
	datad => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	combout => \RingBuff|R|ram~15_combout\);

-- Location: LCCOMB_X50_Y43_N28
\RingBuff|R|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~11_combout\ = (GLOBAL(\rtl~12clkctrl_outclk\) & (\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\)) # (!GLOBAL(\rtl~12clkctrl_outclk\) & ((\RingBuff|R|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datac => \rtl~12clkctrl_outclk\,
	datad => \RingBuff|R|ram~11_combout\,
	combout => \RingBuff|R|ram~11_combout\);

-- Location: LCCOMB_X50_Y41_N26
\RingBuff|R|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~3_combout\ = (GLOBAL(\rtl~14clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\))) # (!GLOBAL(\rtl~14clkctrl_outclk\) & (\RingBuff|R|ram~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~3_combout\,
	datab => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datad => \rtl~14clkctrl_outclk\,
	combout => \RingBuff|R|ram~3_combout\);

-- Location: LCCOMB_X49_Y41_N24
\RingBuff|R|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~7_combout\ = (GLOBAL(\rtl~13clkctrl_outclk\) & ((\kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\))) # (!GLOBAL(\rtl~13clkctrl_outclk\) & (\RingBuff|R|ram~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RingBuff|R|ram~7_combout\,
	datac => \kdecode|kscan|contador|U1|CC_Reg|FFD4|Q~q\,
	datad => \rtl~13clkctrl_outclk\,
	combout => \RingBuff|R|ram~7_combout\);

-- Location: LCCOMB_X50_Y41_N0
\RingBuff|R|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~49_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (((\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\) # (\RingBuff|R|ram~7_combout\)))) # (!\RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\ & (\RingBuff|R|ram~3_combout\ & 
-- (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~3_combout\,
	datab => \RingBuff|MemoryAddressCtrl|mux|R[0]~0_combout\,
	datac => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datad => \RingBuff|R|ram~7_combout\,
	combout => \RingBuff|R|ram~49_combout\);

-- Location: LCCOMB_X50_Y41_N6
\RingBuff|R|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~50_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & ((\RingBuff|R|ram~49_combout\ & (\RingBuff|R|ram~15_combout\)) # (!\RingBuff|R|ram~49_combout\ & ((\RingBuff|R|ram~11_combout\))))) # 
-- (!\RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\ & (((\RingBuff|R|ram~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~15_combout\,
	datab => \RingBuff|MemoryAddressCtrl|mux|R[1]~1_combout\,
	datac => \RingBuff|R|ram~11_combout\,
	datad => \RingBuff|R|ram~49_combout\,
	combout => \RingBuff|R|ram~50_combout\);

-- Location: LCCOMB_X51_Y41_N2
\RingBuff|R|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RingBuff|R|ram~51_combout\ = (\RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & (\RingBuff|R|ram~48_combout\)) # (!\RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\ & ((\RingBuff|R|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RingBuff|R|ram~48_combout\,
	datab => \RingBuff|R|ram~50_combout\,
	datac => \RingBuff|MemoryAddressCtrl|mux|R[2]~2_combout\,
	combout => \RingBuff|R|ram~51_combout\);

-- Location: FF_X51_Y41_N3
\OutputBuff|Reg|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \OutputBuff|OutputBufferCtrl|CurrentState.STATE_01~clkctrl_outclk\,
	d => \RingBuff|R|ram~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OutputBuff|Reg|FFD4|Q~q\);

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

ww_O(0) <= \O[0]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_dval <= \dval~output_o\;

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;
END structure;


