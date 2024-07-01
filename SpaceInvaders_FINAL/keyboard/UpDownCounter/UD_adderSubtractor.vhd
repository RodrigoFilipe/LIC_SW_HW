library ieee;
use ieee.std_logic_1164.all;

entity adderSubtractorUD is
port
	(
	A: in std_logic_vector (3 downto 0);
	B: in std_logic_vector (3 downto 0);
	CIn: in std_logic;
	OPau: in std_logic;
	S: out std_logic_vector (3 downto 0);
	C4Out: out std_logic
	);
end adderSubtractorUD;

architecture structure of adderSubtractorUD is
component Adder4UD is
port
	(
	A: in std_logic_vector(3 downto 0);
	B: in std_logic_vector(3 downto 0);
	C0: in std_logic;
	R: out std_logic_vector(3 downto 0);
	C4: out std_logic
	);
end component;

SIGNAL BxorOP :std_logic_vector(3 downto 0);
SIGNAL COut :std_logic;
SIGNAL CIxorOP : std_logic;

begin

BxorOP(0) <= B(0) xor not OPau;
BxorOP(1) <= B(1) xor not OPau;
BxorOP(2) <= B(2) xor not OPau;
BxorOP(3) <= B(3) xor not OPau;
CIxorOP <= 	CIn xor not OPau;

AS_Adder: Adder4UD port map(
A => A,
B => BxorOP,
C0 => CIxorOP,
R => S,
C4 => COut
);

C4Out <= COut xor not OPau;
	
end structure;