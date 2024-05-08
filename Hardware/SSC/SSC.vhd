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
	Dout: out std_logic_vector(6 downto 0);	
	accept: in std_logic -- apenas para teste, remover quando o score dispatcher estiver implementado
);
end SSC;


architecture structural of SSC is
component SerialReceiver is
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

begin

SReceiver: SerialReceiver port map(
	rst => rst,
	clk => clk,
	SDX => SDX,
	SCLK => SCLK,
	SS => SC_sel,
	accept => accept,
	DXval => WrD,
	D => Dout
);

end structural;