library ieee;
use ieee.std_logic_1164.all;

entity Reg4UD is
port
	(
	CLK: in std_logic;
	RST: in std_logic;
	A: in std_logic_vector(3 downto 0);
	E: in std_logic;
	S: out std_logic_vector(3 downto 0)
	);
end Reg4UD;

architecture structure of Reg4UD is
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

begin

R_FFD0: FFD port map(
CLK => CLK,
RESET => RST,
SET => '0',
D => A(0),
EN => E,
Q => S(0)
);

R_FFD1: FFD port map(
CLK => CLK,
RESET => RST,
SET => '0',
D => A(1),
EN => E,
Q => S(1)
);

R_FFD2: FFD port map(
CLK => CLK,
RESET => RST,
SET => '0',
D => A(2),
EN => E,
Q => S(2)
);

R_FFD3: FFD port map(
CLK => CLK,
RESET => RST,
SET => '0',
D => A(3),
EN => E,
Q => S(3)
);

end structure;