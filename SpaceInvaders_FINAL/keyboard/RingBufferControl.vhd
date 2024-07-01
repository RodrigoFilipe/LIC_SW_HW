library ieee;
use ieee.std_logic_1164.all;

entity RingBufferControl is
port(
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
end RingBufferControl;

architecture behavioral of RingBufferControl is

type STATE_TYPE is (STATE_000, STATE_001, STATE_010, STATE_011, STATE_100, STATE_101, STATE_110);
signal CurrentState, NextState : STATE_TYPE;

begin

--Flip-Flop
CurrentState <= STATE_000 when rst ='1' else NextState when rising_edge(clk);

GenerateNextState:
process(CurrentState, CTS, DAV, full, empty)
begin 


case CurrentState is
	when STATE_000 => if (DAV = '0' and CTS = '0') then
								NextState <= STATE_000;
							elsif (DAV = '0' and CTS = '1' and empty = '1') then
								NextState <= STATE_000;
							elsif (DAV = '0' and CTS = '1' and empty = '0') then 
								NextState <= STATE_100;
							elsif (DAV = '1' and full = '0') then 
								NextState <= STATE_001;
							elsif (DAV = '1' and full = '1' and CTS = '0') then 
								NextState <= STATE_000;
							elsif (DAV = '1' and full = '1' and CTS = '1' and empty = '1') then 
								NextState <= STATE_000;
							elsif (DAV = '1' and full = '1' and CTS = '1' and empty = '0') then
								NextState <= STATE_100;
							end if;
							
	when STATE_100 => NextState <= STATE_101;
	
	when STATE_101 => NextState <= STATE_000;
	
	when STATE_001 => NextState <= STATE_010;
	
	when STATE_010 => NextState <= STATE_011;
	
	when STATE_011 => if (DAV = '1') then
								NextSTate <= STATE_011;
							else
								NextSTate <= STATE_110;
							end if;
							
	when STATE_110 => NextState <= STATE_000;
	
	end case;
	
end process;



Wreg <= '1' when (CurrentState = STATE_100) else '0';
incGet <= '1' when (CurrentState = STATE_101) else '0';

SelPG <= '1' when (CurrentState = STATE_001 or CurrentState = STATE_010 or CurrentState = STATE_011 ) else '0';
incPut <= '1' when (CurrentState = STATE_110) else '0';

wr <= '1' when (CurrentState = STATE_010 or CurrentState = STATE_011) else '0';

DAC <= '1' when (CurrentState = STATE_011) else '0';

end behavioral;
