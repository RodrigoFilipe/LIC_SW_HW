library ieee;
use ieee.std_logic_1164.all;

entity SSC_tb is
end SSC_tb;

architecture behavioral of SSC_tb is
component SSC is
port(
	clk: in std_logic;
	rst: in std_logic;
	SC_sel: in std_logic;
	SCLK: in std_logic;
	SDX: in std_logic;
	WrD: out std_logic;
	Dout: out std_logic_vector(6 downto 0)
);
end component;

constant Mclk_period: time := 1 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal rst_tb: std_logic;
signal clk_tb: std_logic;
signal SC_sel_tb: std_logic;
signal Sclk_tb: std_logic;
signal SDX_tb: std_logic;
signal WrD_tb: std_logic;
signal Dout_tb: std_logic_vector(8 downto 0);

begin

UUT : SLCDC port map( 
                    rst => rst_tb,
					clk => clk_tb,
					SC_sel => SC_sel_tb,
                    SCLK => Sclk_tb,
                    SDX => SDX_tb,
					WrD => WrD_tb,
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
SCsel_tb <='1';
SCLK_tb <= '1';
wait for Mclk_period;

rst_tb <= '0';
SCLK_tb <= '0';
wait for Mclk_period;

LCDsel_tb <= '0';
SCLK_tb <= '1';
SDX_tb <= '1';
wait for Mclk_period;

SCLK_tb <= '0';
wait for Mclk_period;

SCLK_tb <= '1';
SDX_tb <= '0';
wait for Mclk_period;

SCLK_tb <= '0';
wait for Mclk_period;

SCLK_tb <= '1';
SDX_tb <= '1';
wait for Mclk_period;

SCLK_tb <= '0';
SCsel_tb <= '1';
wait for Mclk_period;



wait;
end process;

end behavioral;