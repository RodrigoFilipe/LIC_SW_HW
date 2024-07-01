library ieee;
use ieee.std_logic_1164.all;

entity keyboardReader_tb is
end keyboardReader_tb;

architecture behavioral of keyboardReader_tb is
component KeyboardReader is
port(
	rst: in std_logic;
	clk: in std_logic;
	kack: in std_logic;
	I: in std_logic_vector(3 downto 0);
	O: out std_logic_vector(3 downto 0);
	dval: out std_logic;
	D: out std_logic_vector(3 downto 0)
);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal RST_tb: std_logic;
signal Mclk_tb: std_logic;
signal ACK_tb: std_logic;
signal KBIn_tb: std_logic_vector(3 downto 0);
signal KBOut_tb: std_logic_vector(3 downto 0);
signal D_tb: std_logic_vector(3 downto 0);
signal Dval_tb: std_logic;

begin

UUT: keyboardReader port map( 
										rst => RST_tb,
										clk => Mclk_tb,
										kack => ACK_tb,
										I =>KBIn_tb,
										O => KBOut_tb,
										dval => Dval_tb,
										D => D_tb
										);
										
clk_gen : process
begin
		Mclk_tb <= '0';
		wait for Mclk_half_period;
		Mclk_tb <= '1';
		wait for Mclk_half_period;
end process;

stimulus: process
begin
RST_tb <= '1';
ACK_tb <= '0';
KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*4;

RST_tb <= '0';
wait for Mclk_period*2;



KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '0';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '0';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '0';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '0';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '0';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '0';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '0';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '0';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

KBIn_tb(0) <= '1';
KBIn_tb(1) <= '1';
KBIn_tb(2) <= '1';
KBIn_tb(3) <= '1';
wait for Mclk_period*7;

ACK_tb <= '1';
wait for Mclk_period*2;


wait;
end process;

end behavioral;