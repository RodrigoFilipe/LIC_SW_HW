library ieee;
use ieee.std_logic_1164.all;

entity Adder3 is
port
	(
	A: in std_logic_vector(2 downto 0);
	B: in std_logic_vector(2 downto 0);
	C0: in std_logic;
	R: out std_logic_vector(2 downto 0);
	C3: out std_logic
	);
end Adder3;

architecture structural of Adder3 is
component FA is
port
	(
	A: in std_logic;
	B: in std_logic;
	Ci: in std_logic;
	S: out std_logic;
	Co: out std_logic
	);
end component;

SIGNAL carry: std_logic_vector(2 downto 1);

begin

A_FA0: FA port map(
A => A(0),
B => B(0),
Ci => C0,
S => R(0),
Co => carry(1)
);

A_FA1: FA port map(
A => A(1),
B => B(1),
Ci => carry(1),
S => R(1),
Co => carry(2)
);

A_FA2: FA port map(
A => A(2),
B => B(2),
Ci => carry(2),
S => R(2),
Co => C3
);

end structural;