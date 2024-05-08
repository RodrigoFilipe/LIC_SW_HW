library ieee;
use ieee.std_logic_1164.all;

entity KeyScan_tb is
end KeyScan_tb;

architecture behavioral of KeyScan_tb is
component keyScan is
port
	(
	Kscan: in std_logic;	
	I: in std_logic_vector(3 downto 0);
	clk: in std_logic;
	Rst: in std_logic;
	K: out std_logic_vector(3 downto 0);
	Kpress: out std_logic;
	O: out std_logic_vector(3 downto 0)
	);
end component;


constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal Clk_tb: std_logic;
signal RST_tb: std_logic;
signal Kscan_tb: std_logic;
signal KBIn_tb: std_logic_vector(3 downto 0);
signal K_tb: std_logic_vector(3 downto 0);
signal Kpress_tb: std_logic;
signal KBOut_tb: std_logic_vector(3 downto 0);


begin

UUT : keyScan port map( 
						Kscan => Kscan_tb,
						clk => Clk_tb,
						Rst => RST_tb,
						I => KBIn_tb,
						K => K_tb,
						Kpress => Kpress_tb,
						O => KBOut_tb
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

Kscan_tb <= '0';
KBIn_tb(0) <= '0';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';

RST_tb <= '1';
wait for Mclk_period;

RST_tb <= '0';
wait for Mclk_period;

Kscan_tb <= '1';
wait for Mclk_period*4;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '0';
wait for Mclk_period*4;

KBIn_tb(1) <= '1';
KBIn_tb(2) <= '0';
wait for Mclk_period*4;

KBIn_tb(2) <= '1';
KBIn_tb(3) <= '0';
wait for Mclk_period*4;


wait;
end process;

end behavioral;








