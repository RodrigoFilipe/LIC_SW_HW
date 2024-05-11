library ieee;
use ieee.std_logic_1164.all;

entity MAC is
port(
	clk: in std_logic;
	rst: in std_logic;
	putGet: in std_logic;
	incPut: in std_logic;
	incGet: in std_logic;
	full: out std_logic;
	empty: out std_logic;
	Address: out std_logic_vector(2 downto 0)
);
end MAC;

architecture structure of MAC is
component UpDownCounter is
port(
	CLK: in std_logic;
	RST: in std_logic;
	Enable: in std_logic;
	IncDec: in std_logic;
	R: out std_logic_vector(3 downto 0)
);

end component;

component counter3 is
port(
	CLK: in std_logic;
	RST: in std_logic;
	CE: in std_logic;
	Q: out std_logic_vector(2 downto 0)
);
end component;

component Mux2bit is
port(
	X: in std_logic_vector(2 downto 0);
	Y: in std_logic_vector(2 downto 0);
	S: in std_logic;
	R: out std_logic_vector(2 downto 0)
);
end component;

signal s_putGet: std_logic;
signal s_UDCounter: std_logic_vector(3 downto 0);
signal s_put: std_logic_vector(2 downto 0);
signal s_get: std_logic_vector(2 downto 0);
signal s_enable: std_logic;


begin 

putCount: counter3 port map(
	CLK => clk,
	RST => rst,
	CE => incPut,
	Q => s_put
);

getCount: counter3 port map(
	CLK => clk,
	RST => rst,
	CE => incGet,
	Q => s_get
);

mux: Mux2bit port map(
	X => s_get,
	Y => s_put,
	S => putGet,
	R => Address
);

UpDownCount: UpDownCounter port map(
	CLK => clk,
	RST => rst,
	Enable => s_enable,
	IncDec => incPut,
	R => s_UDCounter
);

s_enable <= (incPut or incGet);
full <= s_UDCounter(3);
empty <= not (s_UDCounter(0) or s_UDCounter(1) or s_UDCounter(2) or s_UDCounter(3));


end structure;

