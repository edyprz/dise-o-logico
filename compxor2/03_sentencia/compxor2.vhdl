--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta XOR
entity compxor2 is
   port( 

	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end entity compxor2;

architecture beh of compxor2 is
begin
   --setencia concurrente
   f <=  (not(x) and y) or (x and not(y));
end architecture beh;
				
