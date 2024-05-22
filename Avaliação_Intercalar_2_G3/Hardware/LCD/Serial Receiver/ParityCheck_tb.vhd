library ieee;
use ieee.std_logic_1164.all;

entity ParityCheck_tb is
end ParityCheck_tb;

architecture behavioral of ParityCheck_tb is
component ParityCheck is
port(
	data: in std_logic;
	init: in std_logic;
	clk: in std_logic;
	err: out std_logic
);
end component;

constant Mclk_period: time := 1 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal data_tb: std_logic;
signal init_tb: std_logic;
signal clk_tb: std_logic;
signal err_tb: std_logic;

begin

UUT : ParityCheck port map( 
                    data => data_tb,
					init => init_tb,
					clk => clk_tb,
                    err => err_tb
					);
					
					
clk_gen : process

begin
		clk_tb <= '0';
		wait for Mclk_half_period;
		clk_tb <= '1';
		wait for Mclk_half_period;
end process;

stimulus: process
begin

init_tb <= '1';
data_tb <= '1';
wait for Mclk_period;

init_tb <= '0';
data_tb <= '1';
wait for Mclk_period;

data_tb <= '0';
wait for Mclk_period;


data_tb <= '0';
wait for Mclk_period;


data_tb <= '1';
wait for Mclk_period;


data_tb <= '1';
wait for Mclk_period;




wait;
end process;

end behavioral;