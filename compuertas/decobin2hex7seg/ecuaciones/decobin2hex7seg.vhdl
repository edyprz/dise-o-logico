--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador  binario a hexadecimal de 7 segmentos 
entity decobin2hex7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobin2hex7seg;

architecture beh of decobin2hex7seg is
begin
                             
sal(0)<=(not(ent(1)) or ent(3)) and (not(ent(0)) or not(ent(3)) or ent(2)) and (not(ent(3)) or ent(1) or ent(0)) and (not(ent(0)) or not(ent(2)) or ent(3)) and (ent(3) or ent(2) or ent(1) or ent(0));

sal(1)<=(ent(3) or ent(2)) and (ent(2) or ent(0)) and (not(ent(3)) or ent(1) or not(ent(0))) and (ent(3) or not(ent(1)) or not(ent(0))) and (ent(3) or ent(1) or ent(0));

sal(2)<=(ent(1) or not(ent(0))) and (ent(3) or not(ent(2))) and (not(ent(3)) or ent(2)) and (not(ent(0)) or ent(3)) and (ent(3) or ent(1));

sal(3)<=(not(ent(3)) or not(ent(2))) and (not(ent(3)) or ent(1) or ent(0)) and (not(ent(2)) or not(ent(0)) or ent(1)) and (ent(3) or not(ent(1)) or ent(0)) and (ent(0) or ent(3) or ent(2)) and (ent(3) or ent(2) or not(ent(1))) and (not(ent(3)) or not(ent(1)) or not(ent(0)));

sal(4)<=(ent(2) or ent(0)) and (not(ent(1)) or ent(0)) and (not(ent(3)) or not(ent(2))) and (not(ent(3)) or not(ent(1)) or not(ent(0)));

sal(5)<=(not(ent(3)) or not(ent(1))) and (ent(1) or ent(0)) and (ent(1) or ent(3) or not(ent(2))) and (not(ent(3)) or ent(2)) and (not(ent(2)) or not(ent(1)) or ent(0));

sal(6)<=(not(ent(3)) or not(ent(1))) and (not(ent(1)) or ent(0))and (not(ent(3)) or ent(2)) and (not(ent(3)) or not(ent(0))) and (ent(1) or ent(3) or not(ent(2))) and (not(ent(1)) or ent(3) or ent(2));

end architecture beh;
				
