library ieee;
use ieee.std_logic_1164.all;

entity UpDownCounter is
port
	(
	CLK: in std_logic;
	RST: in std_logic;
	Enable: in std_logic;
	IncDec: in std_logic;
	R: out std_logic_vector(3 downto 0)
	);
end UpDownCounter;

architecture structure of UpDownCounter is
component MUX4UD is
port
	(
	X: in std_logic_vector(3 downto 0);
	Y: in std_logic_vector(3 downto 0);
	S: in std_logic;
	R: out std_logic_vector(3 downto 0)
	);
end component;

component Reg4UD is
port
	(
	CLK: in std_logic;
	RST: in std_logic;
	A: in std_logic_vector(3 downto 0);
	E: in std_logic;
	S: out std_logic_vector(3 downto 0)
	);
end component;

component adderSubtractorUD is
port
	(
	A: in std_logic_vector (3 downto 0);
	B: in std_logic_vector (3 downto 0);
	CIn: in std_logic;
	OPau: in std_logic;
	S: out std_logic_vector (3 downto 0);
	C4Out: out std_logic
	);
end component;

SIGNAL MUXOut: std_logic_vector(3 downto 0);
SIGNAL ROut: std_logic_vector(3 downto 0);
SIGNAL CE4bit: std_logic_vector(3 downto 0);
SIGNAL ASOut: std_logic_vector(3 downto 0);
signal s_incDec: std_logic;

begin

CE4bit(0) <= Enable;
CE4bit(1) <= '0';
CE4bit(2) <= '0';
CE4bit(3) <= '0';

EC_MUX: MUX4UD port map(
X => "0000",
Y => ASOut,
S => '0',
R => MUXOut
);

EC_Reg: Reg4UD port map(
CLK => CLK,
RST => RST,
A => MUXOut, 
E => Enable,
S => ROut
);

EC_AS: adderSubtractorUD port map(
A => ROut,
B => CE4bit,
CIn => '0',
OPau => IncDec,
S => ASOut
);

R <= ROut;


end structure;