--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta AND
entity compand3 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;
	  z:in   bit;	
          f:out  bit
       );
end entity compand3;

architecture beh of compand3 is
begin
   --setencia concurrente
   f <= x and y and z;
end architecture beh;

