library ieee;
use ieee.std_logic_1164.all;

entity SerialControl_tb is
end SerialControl_tb;

architecture behavioral of SerialControl_tb is
component SerialControl is
port(
	rst: in std_logic;
	clk: in std_logic;
	enRx: in std_logic;
	accept: in std_logic;
	pFlag: in std_logic;
	dFlag: in std_logic;
	RXerror: in std_logic;
	wr: out std_logic;
	init: out std_logic;
	DXval: out std_logic
);
end component;

constant Mclk_period: time := 1 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal rst_tb: std_logic;
signal clk_tb: std_logic;
signal enRX_tb: std_logic;
signal accept_tb: std_logic;
signal pFlag_tb: std_logic;
signal dFlag_tb: std_logic;
signal RXerror_tb: std_logic;
signal wr_tb: std_logic;
signal init_tb: std_logic;
signal DXval_tb: std_logic;


begin

UUT : SerialControl port map( 
                    rst => rst_tb,
					clk => clk_tb,
					enRX => enRX_tb,
                    accept => accept_tb,
                    pFlag => pFlag_tb,
                    dFlag => dFlag_tb,
                    RXerror => RXerror_tb,
                    wr => wr_tb,
                    init => init_tb,
					DXval => DXval_tb
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
enRX_tb <= '1';
accept_tb <= '0';
dFlag_tb <= '0';
pFlag_tb <= '0';
RXerror_tb <= '1';
wait for Mclk_period;

rst_tb <= '0';
wait for Mclk_period;


enRX_tb <= '0';
wait for Mclk_period*2;

dFlag_tb <= '1';
wait for Mclk_period;

pflag_tb <= '1';
RXerror_tb <= '0';
wait for Mclk_period;

accept_tb <= '1';
wait for Mclk_period;





wait;
end process;

end behavioral;