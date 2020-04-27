--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador de 2 a 4 con enable mediante sentencias concurrentes
entity deco2a4h is
   port( 

	  a:in   bit;
	  b:in   bit;
	  e:in   bit;
	 m0:out  bit;
	 m1:out  bit;
	 m2:out  bit;
	 m3:out  bit	
       );
end entity deco2a4h ;

architecture beh of deco2a4h is
begin

	m0 <= not(a) and not(b) and e;
	m1 <= not(a) and     b and e;
	m2 <=     a and not (b) and e;
	m3 <=     a and     b and e;

end architecture beh;
