--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta OR
entity compor3 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
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

