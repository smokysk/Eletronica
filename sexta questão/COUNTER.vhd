library ieee;
use ieee.std_logic_1164.all;

entity COUNTER is
port(
	CLK, RST										: in std_logic; --Clock e reset para controle do funcionamento do sistema
	DSP_U,DSP_D						:	out std_logic_vector(6 downto 0) --Display de casas de unidade e decimal
);
end COUNTER;

architecture MAIN of COUNTER is 

component CLK_DIVISOR is
port(
	CLK,RST			 			  	: in std_logic;
	CLK_OUT								: out std_logic
);
end component CLK_DIVISOR;

component FFD is
port(
	D, CLK, S, R				 :	in 	std_logic;
	Q, QB								 :	out std_logic
);
end component FFD;

component BCD_DECODER is
port(
	Q_IN								:	inout std_logic_vector(3 downto 0);
	DSP_OUT							:	out std_logic_vector(6 downto 0)
);
end component BCD_DECODER;

	signal S_WIRE				: std_logic_vector(6 downto 0);
	signal QB_WIRE			:	std_logic_vector(6 downto 0);
	signal Q_WIRE				:	std_logic_vector(6 downto 0);
	signal R_WIRE				:	std_logic_vector(1 downto 0);
	signal Q_U					:	std_logic_vector(3 downto 0);
	signal Q_D					:	std_logic_vector(3 downto 0);
	signal CLK_OUT			: std_logic;

begin
--------------------------------Reset automático do relógio, tanto para os 4 primeiros FFs quanto para os 3 últimos-----------------------
	R_WIRE(0)<=(Q_WIRE(3) and Q_WIRE(1)) or RST;
	R_WIRE(1)<=(Q_WIRE(6) and Q_WIRE(4)) or RST;

--------------------------------Instanciando o divisor de frequencia--------------------------------------------------
	CLK_DIV: CLK_DIVISOR port map(CLK,RST,CLK_OUT);
	
	FFD_0: FFD port map(QB_WIRE(0),CLK_OUT,				S_WIRE(0),		R_WIRE(0),Q_WIRE(0),QB_WIRE(0));
	FFD_1: FFD port map(QB_WIRE(1),QB_WIRE(0),S_WIRE(1),		R_WIRE(0),Q_WIRE(1),QB_WIRE(1));
	FFD_2: FFD port map(QB_WIRE(2),QB_WIRE(1),S_WIRE(2),		R_WIRE(0),Q_WIRE(2),QB_WIRE(2));
	FFD_3: FFD port map(QB_WIRE(3),QB_WIRE(2),S_WIRE(3),		R_WIRE(0),Q_WIRE(3),QB_WIRE(3));
	FFD_4: FFD port map(QB_WIRE(4),QB_WIRE(3),S_WIRE(4),		R_WIRE(1),Q_WIRE(4),QB_WIRE(4));
	FFD_5: FFD port map(QB_WIRE(5),QB_WIRE(4),S_WIRE(5),		R_WIRE(1),Q_WIRE(5),QB_WIRE(5));
	FFD_6: FFD port map(QB_WIRE(6),QB_WIRE(5),S_WIRE(6),		R_WIRE(1),Q_WIRE(6),QB_WIRE(6));

--------------------------------Concatenendo os BITS para serem enviados para o decodificador---------------------------------------------
	Q_U <= Q_WIRE(3) & Q_WIRE(2) & Q_WIRE(1) & Q_WIRE(0);--BIFs referentes a casa das unidades
	Q_D <= '0' & Q_WIRE(6) & Q_WIRE(5) & Q_WIRE(4);--BITs referentes as casas decimais
	
--------------------------------Instanciando cada DECODIFICADOR com as suas respectivas entradas e saidas---------------------------------
	DECODER_1: BCD_DECODER port map(Q_U,DSP_U);
	DECODER_2: BCD_DECODER port map(Q_D,DSP_D);
	
end MAIN;