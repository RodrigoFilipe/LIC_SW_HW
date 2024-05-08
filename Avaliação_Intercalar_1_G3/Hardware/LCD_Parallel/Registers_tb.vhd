library ieee;
use ieee.std_logic_1164.all;

entity Registers_tb is
end Registers_tb;

architecture behavioral of Registers_tb is
component Registers is
port(
	Input: in std_logic_vector(3 downto 0);
	Sclk: in std_logic;
	rst: in std_logic;
	DataOut: out std_logic_vector(7 downto 0)
);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal Input_tb: std_logic_vector(3 downto 0);
signal Sclk_tb: std_logic;
signal rst_tb: std_logic;
signal DataOut_tb: std_logic_vector(7 downto 0);

begin

UUT: Registers port map (
	Input => Input_tb,
	Sclk => Sclk_tb,
	rst => rst_tb,
	DataOut => DataOut_tb
);

stimulus: process
begin

Input_tb <= "0011";
Sclk_tb <= '0';
rst_tb <= '1';
wait for Mclk_period;

Input_tb <= "0011";
Sclk_tb <= '0';
rst_tb <= '0';
wait for Mclk_period;

Input_tb <= "0011";
Sclk_tb <= '1';
rst_tb <= '0';
wait for Mclk_period;

Input_tb <= "0011";
Sclk_tb <= '0';
rst_tb <= '0';
wait for Mclk_period;

Input_tb <= "1100";
Sclk_tb <= '1';
rst_tb <= '0';
wait for Mclk_period;

Input_tb <= "1100";
Sclk_tb <= '0';
rst_tb <= '0';
wait for Mclk_period;



wait;
end process;

end behavioral;





