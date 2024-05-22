library ieee;
use ieee.std_logic_1164.all;

entity SpaceInvaders is
port(
	rst: in std_logic;
	clk: in std_logic;
	ack: in std_logic;
	I: in std_logic_vector(3 downto 0);
	RS: out std_logic;
	EOut: out std_logic;
	O: out std_logic_vector(3 downto 0);
	D0_7: out std_logic_vector(7 downto 0)

);
end SpaceInvaders;

architecture structure of SpaceInvaders is
component keyboardReader is
port(
	rst: in std_logic;
	clk: in std_logic;
	kack: in std_logic;
	I: in std_logic_vector(3 downto 0);
	O: out std_logic_vector(3 downto 0);
	dval: out std_logic;
	D: out std_logic_vector(3 downto 0)
);
end component;

component UsbPort is
port(
	inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
	outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
);
end component;

component Registers is
port(
	Input: in std_logic_vector(3 downto 0);
	Sclk: in std_logic;
	rst: in std_logic;
	DataOut: out std_logic_vector(7 downto 0)
	
);
end component;

signal SDval: std_logic;
signal SD: std_logic_vector(3 downto 0);
signal RegInput: std_logic_vector(3 downto 0);
signal RegClk: std_logic;
signal Sack: std_logic;


begin

kreader: keyboardReader port map(
	rst => rst,
	clk => clk,
	kack => Sack,
	I => I,
	O => O,
	dval => SDval,
	D => SD
);

uport: UsbPort port map(
	inputPort(0) => SD(0),
	inputPort(1) => SD(1),
	inputPort(2) => SD(2),
	inputPort(3) => SD(3),
	inputPort(4) => SDval,
	outputPort(7) => Sack,
	
	outputPort(0) => RegInput(0),
	outputPort(1) => RegInput(1), 
	outputPort(2) => RegInput(2), 
	outputPort(3) => RegInput(3),
	outputPort(4) => RegClk,
	outputPort(5) => EOut,
	outputPort(6) => RS
);

LCDdispatcher: Registers port map(
	Input(0) => RegInput(0),
	Input(1) => RegInput(1),
	Input(2) => RegInput(2),
	Input(3) => RegInput(3),
	rst => rst,
	Sclk => RegClk,
	DataOut => D0_7
);


end structure;






