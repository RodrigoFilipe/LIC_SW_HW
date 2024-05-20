library ieee;
use ieee.std_logic_1164.all;

entity LcdDispatcher is
port(
	rst: in std_logic;
	clk: in std_logic;
	Dval: in std_logic;
	Din: in std_logic_vector(8 downto 0);
	Wrl: out std_logic;
	Dout: out std_logic_vector(8 downto 0);
	done: out std_logic
);
end LcdDispatcher;

architecture behavioral of LcdDispatcher is

type STATE_TYPE is (STATE_00, STATE_01, STATE_10);
signal CurrentState, NextState : STATE_TYPE;

begin

--Flip-Flop
CurrentState <= STATE_00 when rst ='1' else NextState when rising_edge(clk);

GenerateNextState:
process(CurrentState, Dval)
	begin 
	
	case CurrentState is
	when STATE_00 => if (Dval = '0') then
								NextState <= STATE_00;
							else
								NextState <= STATE_01;
							end if;
	when STATE_01 => NextState <= STATE_10;
	
	when STATE_10 => NextState <= STATE_00;
	
	end case;
	
end process;

Wrl <= '1' when (CurrentState = STATE_01) else '0';
Dout <= Din when (CurrentState = STATE_01);
done <= '1' when (CurrentState = STATE_10) else '0';

end behavioral;