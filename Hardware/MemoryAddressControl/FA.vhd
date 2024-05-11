library ieee;
use ieee.std_logic_1164.all;

entity FA is
port
	(
	A: in std_logic;
	B: in std_logic;
	Ci: in std_logic;
	S: out std_logic;
	Co: out std_logic
	);
end FA;

architecture structural of FA is
component HA is
port
	(
	A: in std_logic;
	B: in std_logic;
	S: out std_logic;
	Co: out std_logic
	);
end component;

SIGNAL addAB: std_logic;
SIGNAL carry: std_logic_vector(1 downto 0);

begin

FA_HA0: HA port map(
A => A,
B => B,
S => addAB,
Co => carry(0)
);

FA_HA1: HA port map(
A => addAB,
B => Ci,
S => S,
Co =>
carry(1)
);	

Co <= carry(0) or carry(1);

end structural;