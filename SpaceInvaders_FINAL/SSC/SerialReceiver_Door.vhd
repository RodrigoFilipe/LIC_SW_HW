library ieee;
use ieee.std_logic_1164.all;

entity SerialReceiver_Door is
port(
	rst: in std_logic;
	clk: in std_logic;
	SDX: in std_logic;
	SCLK: in std_logic;
	SS: in std_logic;
	accept: in std_logic;
	D: out std_logic_vector(6 downto 0);
	DXval: out std_logic
);
end SerialReceiver_Door;

architecture structural of SerialReceiver_Door is
component SerialControl_Door is
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

component ParityCheck is
port(
	data: in std_logic;
	init: in std_logic;
	clk: in std_logic;
	err: out std_logic
);
end component;

component Cont is 
port(
	R: in std_logic;
	CE: in std_logic;
	Clk: in std_logic;
	Q: out std_logic_vector(3 downto 0)
	);
end component;

component ShiftRegister7 is
port(
	CLK: in std_logic;
	RST: in std_logic;
	data: in std_logic;
	enable: in std_logic;
	D: out std_logic_vector(6 downto 0)
	);
end component;


signal Serr: std_logic;
signal Swr: std_logic;
signal Sinit: std_logic;
signal Scount: std_logic_vector(3 downto 0);
signal Sdflag: std_logic;
signal Spflag: std_logic;

begin 

SC: SerialControl_Door port map(
	rst => rst,
	clk => clk,
	enRX => SS,
	accept => accept,
	pflag => Spflag,
	dflag => Sdflag,
	RXerror => Serr,
	wr => Swr,
	init => Sinit,
	DXval => DXval
);

Pcheck: ParityCheck port map(
	data => SDX,
	clk => SCLK,
	init => Sinit,
	err => Serr
);

ShRegister: ShiftRegister7 port map(
	data => SDX,
	CLK => SCLK,
	RST => rst,
	enable => Swr,
	D => D
);

Counter: Cont port map(
	R => Sinit,
	Clk => SCLK,
	CE => '1',
	Q => Scount
);

Spflag <= Scount(3) and (not Scount(2)) and (not Scount(1)) and (not Scount(0)) ; 
Sdflag <= (not Scount(3)) and Scount(2) and Scount(1) and Scount(0); 

end structural;
 








