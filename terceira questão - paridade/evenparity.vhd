library ieee;
use ieee.std_logic_1164.all;
entity evenparity is
      port( A:in bit_vector(9 downto 0);
                  paridadePar: out bit);
end evenparity;

architecture arch_parity of evenparity is
signal aux : bit_vector(7 downto 0);
  begin
		 aux(0)<=A(0) xor A(1);
		 aux(1)<=aux(0) xor A(2);
		 aux(2)<=aux(1) xor A(3);
		 aux(3)<=aux(2) xor A(4);
		 aux(4)<=aux(3) xor A(5);
		 aux(5)<=aux(4) xor A(6);		 
		 aux(6)<=aux(5) xor A(7);
		 aux(7)<=aux(6) xor A(8);

		paridadePar <= aux(7) xor A(9);
end arch_parity;

