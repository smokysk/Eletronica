library ieee;
use ieee.std_logic_1164.all;

entity comparator is
port (A,B: in std_logic_vector(7 downto 0);
		Logic: out std_logic);
end comparator;
architecture one of comparator is
begin
		Logic <= '1' when (A=B) else '0';
end one;