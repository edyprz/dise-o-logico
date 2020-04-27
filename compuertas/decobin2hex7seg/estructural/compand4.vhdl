--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta AND
entity compand4 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;
	  z:in   bit;	
	  w:in   bit;
          f:out  bit
       );
end entity compand4;

architecture beh of compand4 is
begin
   --setencia concurrente
   f <= x and y and z and w;
end architecture beh;

