--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta NAND
entity compnand2 is
   port( 
	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end entity compnand2;

architecture beh of compnand2 is
begin
   --setencia concurrente
   f <= x nand y;
end architecture beh;

