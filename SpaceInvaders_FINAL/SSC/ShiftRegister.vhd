library ieee;
use ieee.std_logic_1164.all;

entity ShiftRegister7 is
port
	(
	CLK: in std_logic;
	RST: in std_logic;
	data: in std_logic;
	enable: in std_logic;
	D: out std_logic_vector(6 downto 0)
	);
end ShiftRegister7;
	
architecture structure of ShiftRegister7 is
component FFD is
port
	(
	CLK: in std_logic;
	RESET: in STD_LOGIC;
	SET: in std_logic;
	D: in STD_LOGIC;
	EN: in STD_LOGIC;
	Q: out std_logic
	);
end component;

signal Sq: std_logic_vector(6 downto 0);

begin

U1: FFD port map (CLK => CLK, RESET => RST, EN => enable, D => data , Q => Sq(0), SET => '0');
U2: FFD port map (CLK => CLK, RESET => RST, EN => enable, D => Sq(0), Q => Sq(1), SET => '0');
U3: FFD port map (CLK => CLK, RESET => RST, EN => enable, D => Sq(1), Q => Sq(2), SET => '0');
U4: FFD port map (CLK => CLK, RESET => RST, EN => enable, D => Sq(2), Q => Sq(3), SET => '0');
U5: FFD port map (CLK => CLK, RESET => RST, EN => enable, D => Sq(3), Q => Sq(4), SET => '0');
U6: FFD port map (CLK => CLK, RESET => RST, EN => enable, D => Sq(4), Q => Sq(5), SET => '0');
U7: FFD port map (CLK => CLK, RESET => RST, EN => enable, D => Sq(5), Q => Sq(6), SET => '0');


D(0) <= Sq(6);
D(1) <= Sq(5);
D(2) <= Sq(4);
D(3) <= Sq(3);
D(4) <= Sq(2);
D(5) <= Sq(1);
D(6) <= Sq(0);


end structure;