--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta OR
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compor2 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   std_logic;
	  y:in   std_logic;	
          f:out  std_logic
       );
end entity compor2;

architecture beh of compor2 is
begin
   --setencia concurrente
   f <= x or y;
end architecture beh;

