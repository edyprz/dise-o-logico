--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta OR
entity compor2 is
   port( 
	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end entity compor2;

architecture beh of compor2 is
begin
   --setencia concurrente
   f <= x or y;
end architecture beh;

