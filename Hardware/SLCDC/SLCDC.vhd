library ieee;
use ieee.std_logic_1164.all;

entity SLCDC is 
port(
	rst: in std_logic;
	clk: in std_logic;
	LCDsel: in std_logic;
	Sclk: in std_logic;
	SDX: in std_logic;
	Wrl: out std_logic;
	Dout: out std_logic_vector(8 downto 0)
);
end SLCDC;

architecture structural of SLCDC is
component SerialReceiver is
	port(
		rst: in std_logic;
		clk: in std_logic;
		SDX: in std_logic;
		SCLK: in std_logic;
		SS: in std_logic;
		accept: in std_logic;
		D: out std_logic_vector(8 downto 0);
		DXval: out std_logic
	);
end component;

component LcdDispatcher is
	port(
		rst: in std_logic;
		clk: in std_logic;
		Dval: in std_logic;
		Din: in std_logic_vector(8 downto 0);
		Wrl: out std_logic;
		Dout: out std_logic_vector(8 downto 0);
		done: out std_logic
	);
end component;

signal SDval: std_logic;
signal SD: std_logic_vector(8 downto 0);
signal Sdone: std_logic;

begin



SReceiver: SerialReceiver port map(
	rst => rst,
	clk => clk,
	SDX => SDX,
	SCLK => SCLK,
	SS => LCDsel,
	accept => Sdone,
	DXval => SDval,
	D => SD
);

Dispatcher: LcdDispatcher port map(
	rst => rst,
	clk => clk,
	Dval => SDval,
	Din => SD,
	Wrl => Wrl,
	Dout => Dout,
	done => Sdone
);

end structural;