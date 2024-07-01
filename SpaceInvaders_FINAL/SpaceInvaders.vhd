library ieee;
use ieee.std_logic_1164.all;

entity SpaceInvaders is
port(
	rst: in std_logic; --sw0
	clk: in std_logic;
	ack: in std_logic;
	coin: in std_logic; -- sw 8
	manut: in std_logic; --sw 9
	I: in std_logic_vector(3 downto 0);
	Wrl: out std_logic;
	O: out std_logic_vector(3 downto 0);
	DoutLCD: out std_logic_vector(8 downto 0);
	HEX0	: out std_logic_vector(7 downto 0);
	HEX1	: out std_logic_vector(7 downto 0);
	HEX2	: out std_logic_vector(7 downto 0);
	HEX3	: out std_logic_vector(7 downto 0);
	HEX4	: out std_logic_vector(7 downto 0);
	HEX5	: out std_logic_vector(7 downto 0);
	accept: out std_logic -- led 0

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

component SLCDC is
port(
	rst: in std_logic;
	clk: in std_logic;
	LCDsel: in std_logic;
	Sclk: in std_logic;
	SDX: in std_logic;
	Wrl: out std_logic;
	Dout: out std_logic_vector(8 downto 0)
);
end component;

component SSC is
port(
	clk: in std_logic;
	rst: in std_logic;
	SC_sel: in std_logic;
	SCLK: in std_logic;
	SDX: in std_logic;
	WrD: out std_logic;
	Dout: out std_logic_vector(6 downto 0)
);
end component;

component scoreDisplay is
port(	
	set	: in std_logic;
	cmd	: in std_logic_vector(2 downto 0);
	data	: in std_logic_vector(3 downto 0);
	HEX0	: out std_logic_vector(7 downto 0);
	HEX1	: out std_logic_vector(7 downto 0);
	HEX2	: out std_logic_vector(7 downto 0);
	HEX3	: out std_logic_vector(7 downto 0);
	HEX4	: out std_logic_vector(7 downto 0);
	HEX5	: out std_logic_vector(7 downto 0)
		);
end component;

signal SDval: std_logic;
signal SD: std_logic_vector(3 downto 0);
signal Sack: std_logic;
signal SLCDsel: std_logic;
signal SSCsel: std_logic;
signal SSclk: std_logic;
signal SSDX: std_logic;
signal SDout: std_logic_vector(6 downto 0);
signal SWrd: std_logic;
signal Scoin: std_logic;
signal Smanut: std_logic;
signal accCoin: std_logic;



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
	
	inputPort(6) => coin,	
	inputPort(7) => manut,

	
	outputPort(7) => Sack, --kbd
	
	outputPort(0) => SSDX, --lcd / ssc
	outputPort(4) => SSclk, --lcd / ssc
	outputPort(5) => SLCDsel, --lcd
	
	outputPort(6) => SSCsel, --ssc
	
	outputPort(1) => accCoin
	
);

LCD: SLCDC port map(
	rst => rst,
	clk => clk,
	LCDsel => SLCDsel,
	Sclk => SSclk,
	SDX => SSDX,
	Wrl => Wrl,
	DOut => DoutLCD
);


Score: SSC port map(
	clk => clk,
 	rst => rst,
	SC_sel => SSCsel, 
	SCLK => SSclk,
	SDX => SSDX,
	WrD =>  SWrd,
	Dout => SDout
);

SDisplay: scoreDisplay port map(
	set => SWrd,
	cmd(0) => SDout(0),
	cmd(1) => SDout(1),
	cmd(2) => SDout(2),
	data(0) => SDout(3),
	data(1) => SDout(4),
	data(2) => SDout(5),
	data(3) => SDout(6),
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5
);

accept <= accCoin;

end structure;






