--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un registro de carga y almacenamiento
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity registro is
   port( 
	  ent:in   std_logic_vector(3 downto 0);
	    h:in   std_logic;
	  clk:in   std_logic;
          sal:out  std_logic_vector(3 downto 0)
       );
end entity registro;

architecture beh of registro is

signal interna:std_logic_vector(3 downto 0);
	begin
		sal<=interna;
	process(clk)

		begin 
			if clk'event and clk='1' then 
				if h ='1' then 
				interna <= ent;
			end if;
		end if;
	end process;

end architecture beh;
