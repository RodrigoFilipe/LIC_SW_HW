library ieee;
use ieee.std_logic_1164.all;

entity MUX3 is
port
	(
	X: in std_logic_vector(2 downto 0);
	Y: in std_logic_vector(2 downto 0);
	S: in std_logic;
	R: out std_logic_vector(2 downto 0)
	);
end MUX3;

architecture logicFunction of MUX3 is
begin

R(0) <= (X(0) AND S) OR (Y(0) AND NOT S);
R(1) <= (X(1) AND S) OR (Y(1) AND NOT S);
R(2) <= (X(2) AND S) OR (Y(2) AND NOT S);

end logicFunction;