library ieee;
use ieee.std_logic_1164.all;

entity ringBuffer_tb is
end ringBuffer_tb;

architecture behavioral of ringBuffer_tb is
component RingBuffer is
port(
	clk: in std_logic;
	rst: in std_logic;
	DAV: in std_logic;
	CTS: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0);
	Wreg: out std_logic;
	DAC: out std_logic
);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal clk_tb: std_logic;
signal rst_tb: std_logic;
signal DAV_tb: std_logic;
signal CTS_tb: std_logic;
signal D_tb: std_logic_vector(3 downto 0);
signal Q_tb: std_logic_vector(3 downto 0);
signal Wreg_tb: std_logic;
signal DAC_tb: std_logic;


begin

UUT : RingBuffer port map( 
					clk => clk_tb,
					rst => rst_tb,
					DAV => DAV_tb,
					CTS => CTS_tb,
					D  => D_tb,
					Q => Q_tb,
					Wreg => Wreg_tb,
					DAC => DAC_tb
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
D_tb(0) <= '0';
D_tb(1) <= '0';
D_tb(2) <= '1';
D_tb(3) <= '1';
DAV_tb <= '1';
CTS_tb <= '1';
wait for Mclk_period;


rst_tb <= '0';
wait for Mclk_period*5;

DAV_tb <= '0';
wait for Mclk_period*5;


wait;
end process;

end behavioral;