library ieee;
use ieee.std_logic_1164.all;

entity Counter3 is
port
	(
	CLK: in std_logic;
	RST: in std_logic;
	CE: in std_logic;
	Q: out std_logic_vector(2 downto 0)
	);
end Counter3;

architecture structure of Counter3 is
component ContadorCrescente3bit is
port
	(
	CLK: in std_logic;
	Reset: in std_logic;
	DataIn: in std_logic_vector(2 downto 0);
	PL: in std_logic;
	CE: in std_logic;
	S: out std_logic_vector(2 downto 0)
	);
end component;

begin

C_CC: ContadorCrescente3bit port map(
DataIn => "000",
PL => '0',
CE => CE,
CLK => CLK, 
Reset => RST,
S => Q
);
	
end structure;