--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta XOR
entity compor3 is
   port( 

	  x:in   bit;
	  y:in   bit;
	  z:in   bit;	
          f:out  bit
       );
end entity compor3;

architecture beh of compor3 is
begin
   --setencia concurrente
   f <= x or y or z;
end architecture beh;
				
