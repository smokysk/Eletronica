-- Divisor de frequencia 50MHz para 1Hz

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity divfreq is

generic(clk_divider: integer:= 100000);

port(
	-- Inputs
	clk_50Mhz: in std_logic; -- Recebe Clock de 50Mhz
	
	-- Outputs 
	clk_1: Buffer std_logic -- Cospe Clock de 1Hz
); 
end divfreq;

architecture behavior of divfreq is
begin
	process(clk_50Mhz) -- Faz um divisor de frequência de 50MHz para 1Hz
		variable count: integer range 0 to clk_divider;
	begin
		if rising_edge(clk_50Mhz) then
			count := count + 1;
			if count = clk_divider then
				clk_1 <= not clk_1;
				count := 0;
			end if;
		end if;
	end process;

end behavior;
