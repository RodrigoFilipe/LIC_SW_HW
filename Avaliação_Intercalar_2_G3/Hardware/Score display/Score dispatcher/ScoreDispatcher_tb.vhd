library ieee;
use ieee.std_logic_1164.all;

entity ScoreDispatcher_tb is
end ScoreDispatcher_tb;

architecture behavioral of ScoreDispatcher_tb is
component ScoreDispatcher is
port(
	rst: in std_logic;
	clk: in std_logic;
	Dval: in std_logic;
	Din: in std_logic_vector(6 downto 0);
	WrD: out std_logic;
	Dout: out std_logic_vector(6 downto 0);
	done: out std_logic
);
end component;

constant Mclk_period: time := 1 ns;
constant Mclk_half_period: time := Mclk_period / 2;


signal rst_tb: std_logic;
signal clk_tb: std_logic;
signal Dval_tb: std_logic;
signal Din_tb: std_logic_vector(8 downto 0);
signal WrD_tb: std_logic;
signal Dout_tb: std_logic_vector(8 downto 0);
signal done_tb: std_logic;



begin

UUT : LcdDispatcher port map( 
                    rst => rst_tb,
					clk => clk_tb,
					Dval => Dval_tb,
                    Din => Din_tb,
                    WrD => WrD_tb,
                    Dout => Dout_tb,
                    done => done_tb
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
Dval_tb <= '0';
Din_tb <= "101010101";
wait for Mclk_period;

rst_tb <= '0';
wait for Mclk_period;

Dval_tb <= '1';
wait for Mclk_period*3;

wait;
end process;

end behavioral;