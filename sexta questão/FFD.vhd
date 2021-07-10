library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--------------------------------Declaração da entidade principal do FFD---------------------------------------------
entity FFD is
port(
        CLK,D,S,R		: in std_logic;
        Q,QB 				: out std_logic
);
end FFD;

--------------------------------Declaração da arquitetura contendo o circuito sequencial-----------------------------
architecture MAIN of FFD is

	signal	Q_TEMP		:	std_logic;

begin
  process(CLK,R,S)is--O FF tipo D possui SET e RESET assíncrono e funciona com borda de subida do clock
  begin
		if (R = '1')then Q_TEMP <= '0';
		elsif(S = '1')then Q_TEMP <= '1';
    elsif (rising_edge(clk))then Q_TEMP <= D;--É atualizado a cada borda de subida do clock
    end if;
   end process;
	
	Q <= Q_TEMP;
	QB<= not Q_TEMP;
	 
end MAIN;