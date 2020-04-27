--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta AND
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compand2 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   std_logic;
	  y:in   std_logic;	
          f:out  std_logic
       );
end entity compand2;

architecture beh of compand2 is
begin
   --setencia concurrente
   f <= x and y;
end architecture beh;

