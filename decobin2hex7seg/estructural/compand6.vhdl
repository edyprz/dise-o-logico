--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta AND
entity compand6 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;
	  z:in   bit;	
	  w:in   bit;
	  r:in   bit;
	  j:in   bit;
          f:out  bit
       );
end entity compand6;

architecture beh of compand6 is
begin
   --setencia concurrente
   f <= x and y and z and w and r and j;
end architecture beh;

