library ieee;
use ieee.std_logic_1164.all;

entity UpDownCounter_tb is
end UpDownCounter_tb;

architecture behavioral of UpDownCounter_tb is
component UpDownCounter is
port(
	CLK: in std_logic;
	RST: in std_logic;
	Enable: in std_logic;
	IncDec: in std_logic;
	R: out std_logic_vector(3 downto 0)
	);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal clk_tb: std_logic;
signal rst_tb: std_logic;
signal Enable_tb: std_logic;
signal IncDec_tb: std_logic;
signal R_tb: std_logic_vector(3 downto 0);


begin

UUT : UpDownCounter port map( 
                        clk => clk_tb,
						rst => rst_tb,
					    Enable => Enable_tb,
						IncDec => IncDec_tb,
						R => R_tb
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

rst_tb <= '1';
Enable_tb <= '0';
IncDec_tb <= '0';
wait for Mclk_period;


rst_tb <= '0';
Enable_tb <= '1';
IncDec_tb <= '1';
wait for Mclk_period*8;

IncDec_tb <= '0';
Enable_tb <= '1';
wait for Mclk_period*8;



wait;
end process;

end behavioral;