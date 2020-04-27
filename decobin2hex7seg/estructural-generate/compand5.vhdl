--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta AND
entity compand5 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;
	  z:in   bit;	
	  w:in   bit;
	  r:in   bit;
          f:out  bit
       );
end entity compand5;

architecture beh of compand5 is
begin
   --setencia concurrente
   f <= x and y and z and w and r;
end architecture beh;

