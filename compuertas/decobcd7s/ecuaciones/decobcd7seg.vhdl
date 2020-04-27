--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd de 7 segmentos  
entity decobcd7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobcd7seg;

architecture beh of decobcd7seg is
begin


	
 sal(0)<=(ent(1) and not(ent(0)))or ent(3) or (ent(2) and not(ent(1))) or (ent(1) and not(ent(3)) and not(ent(2)));
 sal(1)<= ent(3) or (ent(2) and not(ent(0)))or (ent(2) and not(ent(1))) or (not(ent(1)) and not(ent(0)));
 sal(2)<= (ent(1) and not(ent(0))) or (not(ent(2)) and not(ent(0)));
 sal(3)<= ent(3) or (not(ent(2)) and not(ent(0))) or (ent(1) and not(ent(0))) or (ent(1) and not(ent(3)) and not(ent(2))) or (ent(2) and not(ent(1)) and ent(0));
 sal(4)<= not(ent(1)) or ent(0) or ent(2);
 sal(5)<=not(ent(2)) or (not(ent(1)) and not(ent(0))) or (ent(1) and ent(0));
 sal(6)<= ent(3) or ent(1) or (not(ent(0)) and not(ent(2))) or (ent(2) and ent(0));

end architecture beh;
				
