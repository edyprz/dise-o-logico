--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta NOT
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compnot1 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   std_logic;
          f:out  std_logic
       );
end entity compnot1;

architecture beh of compnot1 is
begin
   --setencia concurrente
   f <= not x;
end architecture beh;

