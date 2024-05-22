library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver_tb is
end SerialReceiver_tb;

architecture behavioral of SerialReceiver_tb is
component SerialReceiver is
port(
	rst: in std_logic;
	clk: in std_logic;
	SDX: in std_logic;
	SCLK: in std_logic;
	SS: in std_logic;
	accept: in std_logic;
	D: out std_logic_vector(8 downto 0);
	DXval: out std_logic
);
end component;

constant Mclk_period: time := 1 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal rst_tb: std_logic;
signal clk_tb: std_logic;
signal SS_tb: std_logic;
signal Sclk_tb: std_logic;
signal SDX_tb: std_logic;
signal accept_tb: std_logic;
signal DXval_tb: std_logic;
signal D_tb: std_logic_vector(8 downto 0);

begin

UUT : SerialReceiver port map( 
                    rst => rst_tb,
					clk => clk_tb,
					SS => SS_tb,
                    SCLK => SCLK_tb,
                    SDX => SDX_tb,
                    accept => accept_tb,
					DXval => DXval_tb,
					D => D_tb
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
SDX_tb <= '1';
SS_tb <='1';
accept_tb <= '0';
SCLK_tb <= '1';
wait for Mclk_period;

rst_tb <= '0';
SCLK_tb <= '0';
wait for Mclk_period;

SS_tb <= '0';
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
SS_tb <= '1';
wait for Mclk_period;

accept_tb <= '1';
wait for Mclk_period*2;



wait;
end process;

end behavioral;