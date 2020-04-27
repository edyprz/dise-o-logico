--Allan Guillemro Merino Vazquez, Ing. en electrica
--descripcion de un buffer de 3 estados
--uso de librerya universal estandarizada ieee

library ieee;
use ieee.std_logic_1164.all;

entity buffer3e is
	port(	ent:  in std_logic_vector(3 downto 0);
		 h :  in std_logic;
		sal: out std_logic_vector(3 downto 0)		);
end entity buffer3e;

architecture beh of buffer3e is
   begin
	process(ent,h)
	begin
		if h='1' then
			sal<= ent;
		else 
			sal<=(others => 'Z');
		end if;
	end process;
end architecture beh;
