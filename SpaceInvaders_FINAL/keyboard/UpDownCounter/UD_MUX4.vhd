library ieee;
use ieee.std_logic_1164.all;

entity MUX4UD is
port
	(
	X: in std_logic_vector(3 downto 0);
	Y: in std_logic_vector(3 downto 0);
	S: in std_logic;
	R: out std_logic_vector(3 downto 0)
	);
end MUX4UD;

architecture logicFunction of MUX4UD is
begin

R(0) <= (X(0) AND S) OR (Y(0) AND NOT S);
R(1) <= (X(1) AND S) OR (Y(1) AND NOT S);
R(2) <= (X(2) AND S) OR (Y(2) AND NOT S);
R(3) <= (X(3) AND S) OR (Y(3) AND NOT S);

end logicFunction;