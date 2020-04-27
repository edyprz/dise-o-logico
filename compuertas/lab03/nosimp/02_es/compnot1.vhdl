--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta NOT
entity compnot1 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
          f:out  bit
       );
end entity compnot1;

architecture beh of compnot1 is
begin
   --setencia concurrente
   f <= not x;
end architecture beh;

