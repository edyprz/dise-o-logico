--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un buffer de 3 estados
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control is
   port( 

	  clk:   in std_logic;
	  swap:  in std_logic;
	  t:    out std_logic_vector(2 downto 0);
	  done:  out std_logic

       );
end entity control;

architecture beh of control is

signal interna:std_logic_vector(3 downto 0);
signal sap:std_logic:='1';

begin
interna<=swap&interna(2 downto 0);
t<=interna(2 downto 0);

 	process(clk)
		begin

		if clk'event and clk = '1' then
			if swap ='1' then
				--interna<=swap&interna(2 downto 0); 
				for i in 0 to 2 loop
				interna(i)<=interna(i+1);
				end loop;
				interna(3)<='0';
				done<=interna(0);
				t<=interna(2 downto 0);
				--interna<='0' & interna(3 downto 1);

			else
				t<=interna(2 downto 0);
				done<='0';
			end if;
		end if;
	end process;
end architecture beh;
				
