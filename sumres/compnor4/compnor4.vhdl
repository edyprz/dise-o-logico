--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta NOR de 4 entradas
entity compnor4 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;
          w:in   bit;
	  z:in   bit;	
          f:out  bit
       );
end entity compnor4;

architecture beh of compnor4 is
begin
   --setencia concurrente
   f <= not(x or y or w or z);
end architecture beh;

