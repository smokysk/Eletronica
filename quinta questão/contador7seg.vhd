-- Divisor de frequencia 50MHz para 1Hz

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity contador7seg is

port(
	-- Inputs
	clk_in: in std_logic; -- Recebe Clock 1Hz
	
	-- Outputs (saidas ON/OFF: a.b.c.d.e.f.g )
	saidas: out std_logic_vector(6 downto 0) -- output paralelo 7bit a.b.c.d.e.f.g
	
	--a: out std_logic;
	--b: out std_logic;
	--c: out std_logic;
	--d: out std_logic;
	--e: out std_logic;
	--f: out std_logic;
	--g: out std_logic
); 
end contador7seg;

architecture behavior of contador7seg is

type est_t is (n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd,ne,nf); -- define os 16 estados hexadecimais do saidas
signal est: est_t := n0;

begin
	process(clk_in)
	begin
		if rising_edge(clk_in) then
		case est is
			when n0 =>
				saidas <= "1111110";
				est <= n1;
			when n1 =>
				saidas <= "0110000";
				est <= n2;
			when n2 =>
				saidas <= "1101101";
				est <= n3;
			when n3 =>
				saidas <= "1111101";
				est <= n4;
			when n4 =>
				saidas <= "0110011";
				est <= n5;
			when n5 =>
				saidas <= "1011011";
				est <= n6;
			when n6 =>
				saidas <= "1011111";
				est <= n7;
			when n7 =>
				saidas <= "1110000";
				est <= n8;
			when n8 =>
				saidas <= "1111111";
				est <= n9;
			when n9 =>
				saidas <= "1111011";
				est <= na;
			when na =>
				saidas <= "1110111";
				est <= nb;
			when nb =>
				saidas <= "0011111";
				est <= nc;
			when nc =>
				saidas <= "1001110";
				est <= nd;
			when nd =>
				saidas <= "0111101";
				est <= ne;
			when ne =>
				saidas <= "1001111";
				est <= nf;
			when nf =>
				saidas <= "1000111";
				est <= n0;
			end case;
		end if;
	end process;	
end behavior;
