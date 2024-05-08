library ieee;
use ieee.std_logic_1164.all;

entity Decoder_tb is
end Decoder_tb;

architecture behavioral of Decoder_tb is
component Decoder is
port(
S0, S1: in std_logic;
O: out std_logic_vector(3 downto 0)
);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal S0_tb: std_logic;
signal S1_tb: std_logic;
signal O_tb: std_logic_vector(3 downto 0);

begin

UUT: Decoder port map(
	S0 => S0_tb,
	S1 => S1_tb,
	O => O_tb

);

stimulus: process
begin

S0_tb <= '0';
S1_tb <= '0';
wait for Mclk_period;

S0_tb <= '0';
S1_tb <= '1';
wait for Mclk_period;

S0_tb <= '1';
S1_tb <= '0';
wait for Mclk_period;

S0_tb <= '1';
S1_tb <= '1';
wait for Mclk_period;

wait;
end process;

end behavioral;
