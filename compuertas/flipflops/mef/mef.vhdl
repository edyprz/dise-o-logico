--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una maquina de estados finitos
entity mef is
   port( 
	  clk:in bit;
	  x:in  bit;
          ab:out  bit_vector(1 downto 0)
       );
end entity mef;

architecture beh of mef is
begin
	process(clk)
begin

	if clk'event and clk='1' then
	q<=d;
	qn<=not d;
	end if;

	
	end process;
end architecture beh;
 

