library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer_tb is
end OutputBuffer_tb;

architecture behavioral of OutputBuffer_tb is

component OutputBuffer is
port
	(
	clk: in std_logic;
	rst: std_logic;
	D: in std_logic_vector(3 downto 0);
	Load: in std_logic;
	ack: in std_logic;
	OBfree: out std_logic;
	Dval: out std_logic;
	Q: out std_logic_vector(3 downto 0)
);
end component;

constant Mclk_period: time := 20 ns;
constant Mclk_half_period: time := Mclk_period / 2;

signal clk_tb: std_logic;
signal rst_tb: std_logic;
signal D_tb: std_logic_vector(3 downto 0);
signal Load_tb: std_logic;
signal ack_tb: std_logic;
signal OBfree_tb: std_logic;
signal Dval_tb: std_logic;
signal Q_tb: std_logic_vector(3 downto 0);



begin

UUT : OutputBuffer port map( 
						clk => clk_tb,
						rst => rst_tb,
						D => D_tb,
						Load => Load_tb,
						ack => ack_tb,
						OBfree => OBfree_tb,
						Dval => Dval_tb,
						Q => Q_tb	
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
D_tb(0) <= '1';
D_tb(1) <= '0';
D_tb(2) <= '0';
D_tb(3) <= '1';
Load_tb <= '0';
ack_tb <= '0';
wait for Mclk_period*2;

rst_tb <= '0';
wait for Mclk_period;

Load_tb <= '1';
ack_tb <= '1';
wait for Mclk_period*3;

ack_tb <= '0';
wait for Mclk_period;


D_tb(0) <= '0';
D_tb(1) <= '1';
D_tb(2) <= '1';
D_tb(3) <= '0';
Load_tb <= '0';
ack_tb <= '0';
wait for Mclk_period*2;

rst_tb <= '0';
wait for Mclk_period;

Load_tb <= '1';
ack_tb <= '1';
wait for Mclk_period*3;

ack_tb <= '0';
wait for Mclk_period;


wait;
end process;

end behavioral;
			