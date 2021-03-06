library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity CLK_DIVISOR is
port(
	CLK,RST				: in std_logic;
	CLK_OUT				: out std_logic
);
end CLK_DIVISOR;
  
architecture MAIN of CLK_DIVISOR is
  
signal COUNT		: integer:=1;
signal TEMP 		: std_logic := '0';
  
begin
	process(CLK,RST)
	begin
		if(RST='1') then
			COUNT<=1;
			TEMP<='0';
		elsif(CLK'event and CLK='1') then
			COUNT <=COUNT+1;
			if (COUNT = 50000) then
				TEMP <= NOT TEMP;
				COUNT <= 1;
			end if;
		end if;
		CLK_OUT <= TEMP;
	end process;
  
end MAIN;
