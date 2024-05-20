library ieee;
use ieee.std_logic_1164.all;

entity Multiplexer_tb is
end Multiplexer_tb;

architecture behavioral of Multiplexer_tb is
component Multiplexer is
port(
I: in std_logic_vector(3 downto 0);
OP0, OP1: in std_logic;
Y: out std_logic
);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal I_tb: std_logic_vector(3 downto 0);
signal OP0_tb: std_logic;
signal OP1_tb: std_logic;
signal Y_tb: std_logic;

begin

UUT : Multiplexer port map( 
						I => I_tb,
						OP0 => OP0_tb,
						OP1 => OP1_tb,
						Y => Y_tb
						);


stimulus: process
begin

I_tb <= "1110";
OP0_tb <= '0';
OP1_tb <= '0';
wait for Mclk_period*2;

I_tb <= "1110";
OP0_tb <= '0';
OP1_tb <= '1';
wait for Mclk_period*2;

I_tb <= "1101";
OP0_tb <= '0';
OP1_tb <= '1';
wait for Mclk_period*2;

I_tb <= "1011";
OP0_tb <= '1';
OP1_tb <= '0';
wait for Mclk_period*2;

I_tb <= "0111";
OP0_tb <= '1';
OP1_tb <= '1';
wait for Mclk_period*2;

I_tb <= "1111";
OP0_tb <= '1';
OP1_tb <= '1';
wait for Mclk_period*2;


wait;
end process;

end behavioral;





