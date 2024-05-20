library ieee;
use ieee.std_logic_1164.all;

entity adderSubtractor is
port
	(
	A: in std_logic_vector (3 downto 0);
	B: in std_logic_vector (3 downto 0);
	CIn: in std_logic;
	OPau: in std_logic;
	S: out std_logic_vector (3 downto 0);
	C4Out: out std_logic
	);
end adderSubtractor;

architecture structure of adderSubtractor is
component adder4 is
port
	(
	A: in std_logic_vector(3 downto 0);
	B: in std_logic_vector(3 downto 0);
	C0: in std_logic;
	S: out std_logic_vector(3 downto 0);
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

AS_Adder: adder4 port map(
A => A,
B => BxorOP,
C0 => CIxorOP,
S => S,
C4 => COut
);

C4Out <= COut xor not OPau;
	
end structure;