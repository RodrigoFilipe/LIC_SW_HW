library ieee;
use ieee.std_logic_1164.all;

entity SSC is
port(
	clk: in std_logic;
	rst: in std_logic;
	SC_sel: in std_logic;
	SCLK: in std_logic;
	SDX: in std_logic;
	WrD: out std_logic;
	Dout: out std_logic_vector(6 downto 0)
);
end SSC;


architecture structural of SSC is
component SerialReceiver_Door is
port(
	rst: in std_logic;
	clk: in std_logic;
	SDX: in std_logic;
	SCLK: in std_logic;
	SS: in std_logic;
	accept: in std_logic;
	D: out std_logic_vector(6 downto 0);
	DXval: out std_logic
);
end component;

component ScoreDispatcher is
port(
	rst: in std_logic;
	clk: in std_logic;
	Dval: in std_logic;
	Din: in std_logic_vector(6 downto 0);
	WrD: out std_logic;
	Dout: out std_logic_vector(6 downto 0);
	done: out std_logic
);
end component;

signal s_Dval: std_logic;
signal s_done: std_logic;
signal s_D: std_logic_vector(6 downto 0);

begin

SReceiver: SerialReceiver_Door port map(
	rst => rst,
	clk => clk,
	SDX => SDX,
	SCLK => SCLK,
	SS => SC_sel,
	accept => s_done,
	DXval => s_Dval,
	D => s_D
);

dispatcher: ScoreDispatcher port map(
	rst => rst,
	clk => clk,
	Dval => s_Dval,
	Din => s_D,
	WrD => WrD,
	Dout => Dout,
	done => s_done
	
);

end structural;