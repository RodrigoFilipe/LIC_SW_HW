library ieee;
use ieee.std_logic_1164.all;

entity OutputBufferControl is
port(
	clk: in std_logic;
	rst: in std_logic;
	Load: in std_logic;
	ack: in std_logic;
	Wreg: out std_logic;
	OBfree: out std_logic;
	Dval: out std_logic
);
end OutputBufferControl;

architecture behavioral of OutputBufferControl is

type STATE_TYPE is (STATE_00, STATE_01, STATE_10);
signal CurrentState, NextState : STATE_TYPE;

begin

--Flip-Flop
CurrentState <= STATE_00 when rst ='1' else NextState when rising_edge(clk);

GenerateNextState:
process(CurrentState, Load, ack)
begin 


case CurrentState is
	when STATE_00 => if(Load = '0') then
								NextState <= STATE_00;
							else 
								NextState <= STATE_01;
							end if;
	
	when STATE_01 => NextState <= STATE_10;
	
	when STATE_10 => if (ack = '0') then 
								NextState <= STATE_10;
							else 
								NextState <= STATE_00;
							end if;
						

	end case;
	
end process;					
	

OBfree <= '1' when (CurrentState = STATE_00) else '0';
Wreg <= '1' when (CurrentState = STATE_01) else '0';	
Dval <= '1' when (CurrentState = STATE_10) else '0';
		
end behavioral;
								
								
							
							