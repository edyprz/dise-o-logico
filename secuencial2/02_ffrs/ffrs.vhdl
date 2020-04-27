--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un flip flop rs
entity ffrs is
   port( 
	  s:in   bit;
	  r:in   bit;
	  clk:in bit;
	  qn:out bit;
          q:out  bit
       );
end entity ffrs;

architecture beh of ffrs is
begin
	process(clk)
begin

	if clk'event and clk='1' then
		if s='1' and r='0' then 
			q<='1';
			qn<='0';
	elsif s='0' and r='1' then 
			q<='0';
			qn<='1';
		end if;
	end if;
	
	end process;
end architecture beh;
 

