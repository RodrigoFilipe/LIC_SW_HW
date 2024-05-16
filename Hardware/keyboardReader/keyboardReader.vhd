library ieee;
use ieee.std_logic_1164.all;

entity keyboardReader is
port(
	rst: in std_logic;
	clk: in std_logic;
	kack: in std_logic;
	I: in std_logic_vector(3 downto 0);
	O: out std_logic_vector(3 downto 0);
	dval: out std_logic;
	D: out std_logic_vector(3 downto 0)
);
end keyboardReader;

architecture structure of keyboardReader is

component keyDecode is
port(
	rst: in std_logic;
	clk: in std_logic;
	kack: in std_logic;
	I: in std_logic_vector(3 downto 0);
	O: out std_logic_vector(3 downto 0);
	kval: out std_logic;
	K: out std_logic_vector(3 downto 0)
);

end component;

component RingBuffer is
port(
	clk: in std_logic;
	rst: in std_logic;
	DAV: in std_logic;
	CTS: in std_logic;
	D: in std_logic_vector(3 downto 0);
	Q: out std_logic_vector(3 downto 0);
	Wreg: out std_logic;
	DAC: out std_logic
);
end component;

component OutputBuffer is
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

end component;

signal s_Kval: std_logic;
signal s_K: std_logic_vector(3 downto 0);
signal s_Wreg: std_logic;
signal s_Q: std_logic_vector(3 downto 0);
signal s_DAC: std_logic;
signal s_OBfree: std_logic;

begin

kdecode: keyDecode port map(
	rst => rst,
	clk => clk,
	kack => s_DAC,
	I => I,
	O => O,
	kval => s_Kval,
	K => s_K
);

RingBuff: RingBuffer port map(
	clk => clk,
	rst => rst,
	DAV => s_Kval,
	CTS => s_OBfree,
	D => s_K,
	Q => s_Q,
	Wreg => s_Wreg,
	DAC => s_DAC
);

OutputBuff: OutputBuffer port map(
	clk => clk,
	rst => rst,
	D => s_Q,
	Load => s_Wreg,
	ack => kack,
	OBfree => s_OBfree,
	Dval => dval,
	Q => D
);



end structure;