library ieee;
use ieee.std_logic_1164.all;

entity BufferControl_tb is
end BufferControl_tb;

architecture behavioral of BufferControl_tb is
component OutputBufferControl is
port(
	clk: in std_logic;
	rst: in std_logic;
	Load: in std_logic;
	ack: in std_logic;
	Wreg: out std_logic;
	OBfree: out std_logic;
	Dval: out std_logic
);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal clk_tb: std_logic;
signal rst_tb: std_logic;
signal Load_tb: std_logic;
signal ack_tb: std_logic;
signal Wreg_tb: std_logic;
signal OBfree_tb: std_logic;
signal Dval_tb: std_logic;

begin

UUT : OutputBufferControl port map(
								clk => clk_tb,
								rst => rst_tb,
								Load => Load_tb,
								ack => ack_tb,
								Wreg => Wreg_tb,
								OBfree => OBfree_tb,
								Dval => Dval_tb
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

rst_tb <= '1';
Load_tb <= '0';
ack_tb <= '0';
wait for Mclk_period*2;

rst_tb <= '0';
wait for Mclk_period;

Load_tb <= '1';
wait for Mclk_period*2;

ack_tb <= '1';
wait for Mclk_period*2;

ack_tb <= '0';
wait for Mclk_period;

wait;
end process;

end behavioral;












