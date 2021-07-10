
LIBRARY ieee;
USE ieee.std_logic_1164.all; 
LIBRARY work;

ENTITY counter IS 
	PORT
	(
		clk_50Mhz :  IN  STD_LOGIC;
		clock_out :  OUT  STD_LOGIC;
		saidas :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END counter;

ARCHITECTURE bdf_type OF counter IS 

COMPONENT divfreq
GENERIC (clk_divider : INTEGER
			);
	PORT(clk_50Mhz : IN STD_LOGIC;
		 clk_1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT contador7seg
	PORT(clk_in : IN STD_LOGIC;
		 saidas : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;

BEGIN 
clock_out <= SYNTHESIZED_WIRE_0;

b2v_inst : divfreq
GENERIC MAP(clk_divider => 100000
			)
PORT MAP(clk_50Mhz => clk_50Mhz,
		 clk_1 => SYNTHESIZED_WIRE_0);

b2v_inst2 : contador7seg
PORT MAP(clk_in => SYNTHESIZED_WIRE_0,
		 saidas => saidas);

END bdf_type;