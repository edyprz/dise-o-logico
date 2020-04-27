--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un flip flop rs
entity ffd is
   port( 
	  d:in   bit;
	  clk:in bit;
	  q:out bit;
          qn:out  bit
       );
end entity ffd;

architecture beh of ffd is
begin
	process(clk)
begin

	if clk'event and clk='1' then
	q<=d;
	qn<=not d;
	end if;

	
	end process;
end architecture beh;
 

