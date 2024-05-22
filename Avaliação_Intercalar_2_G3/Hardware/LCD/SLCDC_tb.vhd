library ieee;
use ieee.std_logic_1164.all;

entity SLCDC_tb is
end SLCDC_tb;

architecture behavioral of SLCDC_tb is
component SLCDC is
port
	(
	rst: in std_logic;
	clk: in std_logic;
	LCDsel: in std_logic;
	Sclk: in std_logic;
	SDX: in std_logic;
	Wrl: out std_logic;
	Dout: out std_logic_vector(8 downto 0)
	);
end component;

constant Mclk_period: time := 1 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal rst_tb: std_logic;
signal clk_tb: std_logic;
signal LCDsel_tb: std_logic;
signal Sclk_tb: std_logic;
signal SDX_tb: std_logic;
signal Wrl_tb: std_logic;
signal Dout_tb: std_logic_vector(8 downto 0);

begin

UUT : SLCDC port map( 
                    rst => rst_tb,
					clk => clk_tb,
					LCDsel => LCDsel_tb,
                    Sclk => Sclk_tb,
                    SDX => SDX_tb,
					Wrl => Wrl_tb,
					Dout => Dout_tb
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
SDX_tb <= '1';
LCDsel_tb <='1';
Sclk_tb <= '1';
wait for Mclk_period;

rst_tb <= '0';
Sclk_tb <= '0';
wait for Mclk_period;

LCDsel_tb <= '0';
Sclk_tb <= '1';
SDX_tb <= '1';
wait for Mclk_period;

Sclk_tb <= '0';
wait for Mclk_period;

Sclk_tb <= '1';
SDX_tb <= '0';
wait for Mclk_period;

Sclk_tb <= '0';
wait for Mclk_period;

Sclk_tb <= '1';
SDX_tb <= '1';
wait for Mclk_period;

Sclk_tb <= '0';
LCDsel_tb <= '1';
wait for Mclk_period;



wait;
end process;

end behavioral;