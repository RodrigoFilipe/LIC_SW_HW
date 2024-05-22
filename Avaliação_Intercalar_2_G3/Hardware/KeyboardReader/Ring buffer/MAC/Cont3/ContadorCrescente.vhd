library ieee;
use ieee.std_logic_1164.all;

entity ContadorCrescente is
port
	(
	DataIn: in std_logic_vector(2 downto 0);
	PL: in std_logic;
	CE: in std_logic;
	CLK: in std_logic;
	Reset: in std_logic;
	TC: out std_logic;
	S: out std_logic_vector(2 downto 0)
	);
end ContadorCrescente;

architecture structure of ContadorCrescente is
component Adder3
port
	(
	A: in std_logic_vector(2 downto 0);
	B: in std_logic_vector(2 downto 0);
	C0: in std_logic;
	R: out std_logic_vector(2 downto 0);
	C3: out std_logic
	);
end component;

component MUX3
port
	(
	X: in std_logic_vector(2 downto 0);
	Y: in std_logic_vector(2 downto 0);
	S: in std_logic;
	R: out std_logic_vector(2 downto 0)
	);
end component;

component Reg3
port
	(
	CLK: in std_logic;
	RESET: in std_logic;
	A: in std_logic_vector(2 downto 0);
	E: in std_logic;
	S: out std_logic_vector(2 downto 0)
	);
end component;

signal MUXout: std_logic_vector(2 downto 0);
signal Rout: std_logic_vector(2 downto 0);
signal AdderOut: std_logic_vector(2 downto 0);
signal CE3bit: std_logic_vector(2 downto 0);

begin
	
	CE3bit(0) <= CE;
	CE3bit(1) <= '0';
	CE3bit(2) <= '0';
	CC_Reg: Reg3 port map (A => MUXout, Clk => CLK, RESET => Reset, E => '1', S => Rout);
	CC_Adder: Adder3 port map (A => CE3bit, B => Rout, C0 => '0', R => AdderOut);
	CC_MUX: MUX3 port map (X => DataIn, Y => AdderOut, S => PL, R => MUXout);
	TC <= Rout(0) and Rout(1) and Rout(2); 
	S <= Rout;

end structure;