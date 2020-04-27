--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un alu de carga y almacenamiento
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity alu is
   port( 
	  x:in   std_logic_vector(3 downto 0);
	  y:in   std_logic_vector(3 downto 0);
	  h:in   std_logic;
          f:out  std_logic_vector(3 downto 0)
       );
end entity alu;

architecture beh of alu is
	begin
	process(x,y,h)
		begin 
			case h is
				when '0'=>
				f<=std_logic_vector(signed(x)+signed(y));
				when '1'=>
				f<=std_logic_vector(signed(x)-signed(y));
				when others=>
				f<="ZZZZ";
			end case;
	end process;

end architecture beh;
