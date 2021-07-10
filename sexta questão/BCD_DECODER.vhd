library ieee;
use ieee.std_logic_1164.all;

--------------------------------Declaração da entidade principal--------------------------------------------------
entity BCD_DECODER is
port(
	Q_IN				:	in std_logic_vector(3 downto 0);
	DSP_OUT			:	out std_logic_vector(6 downto 0)
);
end BCD_DECODER;

--------------------------------Arquitetura do programa principal--------------------------------------------------
architecture MAIN of BCD_DECODER is

begin
	process(Q_IN)is
	begin
			case Q_IN is
				when "0000" => DSP_OUT <= "0000001"; -- "0"     
				when "0001" => DSP_OUT <= "1001111"; -- "1" 
				when "0010" => DSP_OUT <= "0010010"; -- "2" 
				when "0011" => DSP_OUT <= "0000110"; -- "3" 
				when "0100" => DSP_OUT <= "1001100"; -- "4" 
				when "0101" => DSP_OUT <= "0100100"; -- "5" 
				when "0110" => DSP_OUT <= "0100000"; -- "6" 
				when "0111" => DSP_OUT <= "0001111"; -- "7" 
				when "1000" => DSP_OUT <= "0000000"; -- "8"     
				when "1001" => DSP_OUT <= "0000100"; -- "9"
				when "1010" => DSP_OUT <= "0000010"; -- a
				when "1011" => DSP_OUT <= "1100000"; -- b
				when "1100" => DSP_OUT <= "0110001"; -- C
				when "1101" => DSP_OUT <= "1000010"; -- d
				when "1110" => DSP_OUT <= "0110000"; -- E
				when "1111" => DSP_OUT <= "0111000"; -- F
				when others => DSP_OUT <= "0000000"; -- O LED permanece desligado
			end case;
	end process;
end MAIN;