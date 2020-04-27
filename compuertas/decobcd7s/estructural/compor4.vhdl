--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta OR
entity compor4 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;	
	  z:in   bit;
	  w:in   bit;
          f:out  bit
       );
end entity compor4;

architecture beh of compor4 is
begin
   --setencia concurrente
   f <= x or y or z or w;
end architecture beh;

