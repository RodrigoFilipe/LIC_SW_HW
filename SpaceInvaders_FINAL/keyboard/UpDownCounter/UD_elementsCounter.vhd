library ieee;
use ieee.std_logic_1164.all;

entity elementsCounterUD is
port
	(
	CLK: in std_logic;
	RST: in std_logic;
	Enable: in std_logic;
	UpDown: in std_logic;
	R: out std_logic_vector(2 downto 0)
	);
end elementsCounterUD;

architecture structure of elementsCounterUD is
component MUX3 is
port
	(
	X: in std_logic_vector(2 downto 0);
	Y: in std_logic_vector(2 downto 0);
	S: in std_logic;
	R: out std_logic_vector(2 downto 0)
	);
end component;

component Reg3 is
port
	(
	CLK: in std_logic;
	RST: in std_logic;
	A: in std_logic_vector(2 downto 0);
	E: in std_logic;
	S: out std_logic_vector(2 downto 0)
	);
end component;

component adderSubtractor is
port
	(
	A: in std_logic_vector (2 downto 0);
	B: in std_logic_vector (2 downto 0);
	CIn: in std_logic;
	OPau: in std_logic;
	S: out std_logic_vector (2 downto 0);
	C3Out: out std_logic
	);
end component;

SIGNAL MUXOut: std_logic_vector(2 downto 0);
SIGNAL ROut: std_logic_vector(2 downto 0);
SIGNAL CE3bit: std_logic_vector(2 downto 0);
SIGNAL ASOut: std_logic_vector(2 downto 0);

begin

CE3bit(0) <= Enable;
CE3bit(1) <= '0';
CE3bit(2) <= '0';

EC_MUX: MUX3 port map(
X => "000",
Y => ASOut,
S => '0',
R => MUXOut
);

EC_Reg: Reg3 port map(
CLK => CLK,
RST => RST,
A => MUXOut, 
E => Enable,
S => ROut
);

EC_AS: adderSubtractor port map(
A => ROut,
B => CE3bit,
CIn => '0',
OPau => UpDown,
S => ASOut
);

R <= ROut;

end structure;