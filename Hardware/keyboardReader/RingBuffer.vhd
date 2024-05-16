library ieee;
use ieee.std_logic_1164.all;

entity RingBuffer is
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
end RingBuffer;

architecture structure of RingBuffer is
component RingBufferControl is
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

end component;

component MAC is
port(
	clk: in std_logic;
	rst: in std_logic;
	putGet: in std_logic;
	incPut: in std_logic;
	incGet: in std_logic;
	full: out std_logic;
	empty: out std_logic;
	Address: out std_logic_vector(2 downto 0)
);

end component;

component RAM is 	

generic(
		ADDRESS_WIDTH : natural := 3;
		DATA_WIDTH : natural := 4
	);
port(
	address : in std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
	wr: in std_logic;
	din: in std_logic_vector(DATA_WIDTH - 1 downto 0);
	dout: out std_logic_vector(DATA_WIDTH - 1 downto 0)
);

end component;


signal s_wr: std_logic;
signal s_selPG: std_logic;
signal s_incPut: std_logic;
signal s_incGet: std_logic;
signal s_address: std_logic_vector(2 downto 0);
signal s_full: std_logic;
signal s_empty: std_logic;

begin

RingBufferCtrl: RingBufferControl port map (
	clk => clk,
	rst => rst,
	DAV => DAV,
	CTS => CTS,
	full => s_full,
	empty => s_empty,
	wr => s_wr,
	selPG => s_selPG,
	incPut => s_incPut,
	incGet => s_incGet,
	Wreg => Wreg,
	DAC => DAC
);

MemoryAddressCtrl: MAC port map(
	clk => clk,
	rst => rst,
	putGet => s_selPG,
	incPut => s_incPut,
	incGet => s_incGet,
	full => s_full,
	empty => s_empty,
	Address => s_address
);

R: RAM port map(
	address => s_address,
	wr => s_wr,
	din => D,
	dout => Q
);


end structure;
