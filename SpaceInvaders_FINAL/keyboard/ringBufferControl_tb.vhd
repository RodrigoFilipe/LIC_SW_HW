library ieee;
use ieee.std_logic_1164.all;

entity ringBufferControl_tb is
end ringBufferControl_tb;

architecture behavioral of ringBufferControl_tb is
component RingBufferControl is
port
	(
	clk: in std_logic;
	rst: in std_logic;
	DAV: in std_logic;
	CTS: in std_logic;
	full: in std_logic;
	empty: in std_logic;
	wr: out std_logic;
	selPG: out std_logic;
	incPut: out std_logic;
	incGet: out std_logic;
	Wreg: out std_logic;
	DAC: out std_logic
	);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal	Clk_tb: std_logic;
signal	RST_tb: std_logic;
signal	DAV_tb: std_logic;
signal 	CTS_tb: std_logic;
signal	full_tb: std_logic;
signal	empty_tb: std_logic;
signal	wr_tb: std_logic;
signal	selPG_tb: std_logic;
signal	incPut_tb: std_logic;
signal	incGet_tb: std_logic;
signal	Wreg_tb: std_logic;
signal	DAC_tb: std_logic;


begin 
UUT: RingBufferControl port map(
								clk => Clk_tb,
								rst => RST_tb,
								DAV => DAV_tb,
								CTS => CTS_tb,
								full => full_tb,
								empty => empty_tb,
								wr => Wr_tb,
								selPG => selPG_tb,
								incPut => incPut_tb,
								incGet => incGet_tb,
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
DAV_tb <= '1';
CTS_tb <= '0';
full_tb <= '0';
empty_tb <= '1';
wait for Mclk_period*2;

RST_tb <= '0';
wait for Mclk_period*5;

DAV_tb <= '0';
CTS_tb <= '1';
full_tb <= '0';
empty_tb <= '0';
wait for Mclk_period*5;

CTS_tb <= '0';
wait for Mclk_period*2;


wait;
end process;

end behavioral;


