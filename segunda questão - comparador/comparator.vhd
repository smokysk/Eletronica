library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
entity comparator is
    Port ( A,B : in std_logic_vector(7 downto 0);
				Igual: out std_logic);
end comparator;

architecture comp_arch of comparator is
  begin
   process(A,B)
     begin
		if A=B then
           Igual <= '1';
       else
				Igual <= '0';
      end if;
    end process;
end comp_arch;