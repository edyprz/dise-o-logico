--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta AND
entity compand2 is
   port( 
	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end entity compand2;

architecture beh of compand2 is
begin
   --setencia concurrente
   f <= x and y;
end architecture beh;

