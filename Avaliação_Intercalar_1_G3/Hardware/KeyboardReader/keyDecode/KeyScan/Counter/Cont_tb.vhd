library ieee;
use ieee.std_logic_1164.all;

entity Cont_tb is
end Cont_tb;

architecture behavioral of Cont_tb is
component Cont is
port(
	R: in std_logic;
	CE: in std_logic;
	Clk: in std_logic;
	Q: out std_logic_vector(3 downto 0)
	);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal R_tb: std_logic;
signal CE_tb: std_logic;
signal Clk_tb: std_logic;
signal Q_tb: std_logic_vector(3 downto 0);



begin

UUT : Cont port map( 
						R => R_tb,
						CE => CE_tb,
						Clk => Clk_tb,
						Q => Q_tb
						);

clk_gen: process

begin
		Clk_tb <= '0';
		wait for Mclk_half_period;
		Clk_tb <= '1';
		wait for Mclk_half_period;
end process;

stimulus: process
begin

R_tb <= '1';
CE_tb <= '0';
wait for Mclk_period;

R_tb <= '0';
CE_tb <= '0';
wait for Mclk_period;

R_tb <= '0';
CE_tb <= '1';
wait for Mclk_period*17;


wait;
end process;

end behavioral;


