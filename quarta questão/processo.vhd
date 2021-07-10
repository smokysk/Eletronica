library ieee;

entity processo is
	port(D,G,L : in bit;
	R,C : out bit);

end processo;

architecture bhv of processo is
begin
R <= (G or D);
C <= (L and (not G) and (not D));


end bhv;