library ieee;
use ieee.std_logic_1164.all;

entity KeyControl_tb is
end KeyControl_tb;

architecture behavioral of KeyControl_tb is
component keyControl is
port(
	clk: in std_logic;
	rst: in std_logic;
	kpress: in std_logic;
	kack : in std_logic;
	kscan: out std_logic;
	kval: out std_logic
	);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal Clk_tb: std_logic;
signal Rst_tb: std_logic;
signal Kpress_tb: std_logic;
signal Kack_tb: std_logic;
signal Kscan_tb: std_logic;
signal Kval_tb: std_logic;

begin

UUT : KeyControl port map( 
						clk => Clk_tb,
						rst => Rst_tb,
						kpress => Kpress_tb,
						kack => Kack_tb,
						kscan => Kscan_tb,
						kval => Kval_tb
						);

clk_gen : process

begin
		Clk_tb <= '0';
		wait for Mclk_half_period;
		Clk_tb <= '1';
		wait for Mclk_half_period;
end process;

stimulus: process
begin
Rst_tb <= '1';
Kack_tb <= '1';
Kpress_tb <= '0';

wait for Mclk_period*2;

Rst_tb <= '0';
wait for Mclk_period*2;

Kack_tb <= '0';
wait for Mclk_period*4;

Kpress_tb <= '1';
wait for Mclk_period*2;

Kack_tb <= '1';
wait for Mclk_period*4;

Kpress_tb <= '0';
wait for Mclk_period*2;


wait;
end process;

end behavioral;






























