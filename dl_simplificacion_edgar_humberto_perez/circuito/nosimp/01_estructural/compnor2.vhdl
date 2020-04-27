--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta NOR
entity compnor2 is
   port( 
	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end entity compnor2;

architecture beh of compnor2 is
begin
   --setencia concurrente
   f <= x nor y;
end architecture beh;

