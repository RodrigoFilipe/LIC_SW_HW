library ieee;
use ieee.std_logic_1164.all;

entity KeyDecode_tb is
end KeyDecode_tb;

architecture behavioral of KeyDecode_tb is
component KeyDecode is
port(
	rst: in std_logic;
	clk: in std_logic;
	kack: in std_logic;
	I: in std_logic_vector(3 downto 0);
	O: out std_logic_vector(3 downto 0);
	kval: out std_logic;
	K: out std_logic_vector(3 downto 0)
);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal Clk_tb: std_logic;
signal RST_tb: std_logic;
signal Kack_tb: std_logic;
signal KBIn_tb: std_logic_vector(3 downto 0);
signal KBOut_tb: std_logic_vector(3 downto 0);
signal K_tb: std_logic_vector(3 downto 0);
signal Kval_tb: std_logic;

begin

UUT : KeyDecode port map( 
						rst => RST_tb,
						clk => Clk_tb,
						kack => Kack_tb,
						I => KBIn_tb,
						O => KBOut_tb,
						kval => Kval_tb,
						K => K_tb
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

RST_tb <= '1';
Kack_tb <= '0';
KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period;

RST_tb <= '0';
wait for Mclk_period;


KBIn_tb(0) <= '0';
wait for Mclk_period*4;
Kack_tb <= '1';
wait for Mclk_period;
KBIn_tb(0) <= '1';
wait for Mclk_period;

Kack_tb <= '0';
wait for Mclk_period;
KBIn_tb(1) <= '0';
wait for Mclk_period*4;
Kack_tb <= '1';
wait for Mclk_period;
KBIn_tb(1) <= '1';
wait for Mclk_period;

Kack_tb <= '0';
wait for Mclk_period;
KBIn_tb(2) <= '0';
wait for Mclk_period*4;
Kack_tb <= '1';
wait for Mclk_period;
KBIn_tb(2) <= '1';
wait for Mclk_period;

Kack_tb <= '0';
wait for Mclk_period;
KBIn_tb(3) <= '0';
wait for Mclk_period*4;
Kack_tb <= '1';
wait for Mclk_period;
KBIn_tb(3) <= '1';
wait for Mclk_period;
Kack_tb <= '0';
wait for Mclk_period;

wait;
end process;

end behavioral;








