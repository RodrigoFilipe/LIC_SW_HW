library ieee;
use ieee.std_logic_1164.all;

entity mac_tb is
end mac_tb;

architecture behavioral of mac_tb is
component MemoryAddressControl is
port
	(
	clk: in std_logic;
	rst: in std_logic;
	putGet: in std_logic;
	incPut: in std_logic;
	incGet: in std_logic;
	full: out std_logic;
	empty: out std_logic;
	Address: out std_logic_vector(2 downto 0)
	);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal clk_tb: std_logic;
signal rst_tb: std_logic;
signal putGet_tb: std_logic;
signal incPut_tb: std_logic;
signal incGet_tb: std_logic;
signal full_tb: std_logic;
signal empty_tb: std_logic;
signal Address_tb: std_logic_vector(2 downto 0);

begin

UUT : MemoryAddressControl port map( 
					clk => clk_tb,
					rst => rst_tb,
					putGet => putGet_tb,
					incPut => incPut_tb,
					incGet  => incGet_tb,
					Address => Address_tb,
					full => full_tb,
					empty => empty_tb
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

rst_tb <= '1';
putGet_tb <= '0';
incPut_tb <= '0';
incGet_tb <= '0';
wait for Mclk_period;

rst_tb <= '0';
putGet_tb <='1';
incPut_tb <='1';
wait for Mclk_period*7;

putGet_tb <= '0';
wait for Mclk_period;
incPut_tb <= '0';
incGet_tb <= '1';
wait for Mclk_period*7;

wait;
end process;

end behavioral;




					