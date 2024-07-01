library ieee;
use ieee.std_logic_1164.all;

entity OutputBuffer is
port(
	clk: in std_logic;
	rst: std_logic;
	D: in std_logic_vector(3 downto 0);
	Load: in std_logic;
	ack: in std_logic;
	OBfree: out std_logic;
	Dval: out std_logic;
	Q: out std_logic_vector(3 downto 0)
);

end OutputBuffer;

architecture structure of OutputBuffer is

component Registo is
port(
	A: in std_logic_vector(3 downto 0);
	Clk: in std_logic;
	Reset: in std_logic;
	E: in std_logic;
	S: out std_logic_vector(3 downto 0)
);

end component;

component OutputBufferControl is
port(
	clk: in std_logic;
	rst: in std_logic;
	Load: in std_logic;
	ack: in std_logic;
	Wreg: out std_logic;
	OBfree: out std_logic;
	Dval: out std_logic
);

end component;


signal s_Wreg: std_logic;


begin 

OutputBufferCtrl: OutputBufferControl port map(
	clk => clk,
	rst => rst,
	Load => Load,
	ack => ack,
	Wreg => s_Wreg,
	OBfree => OBfree,
	Dval => Dval
); 

Reg: Registo port map(
	A => D,
	clk => s_Wreg,
	Reset => rst,
	E => '1',
	S => Q
);


end structure;