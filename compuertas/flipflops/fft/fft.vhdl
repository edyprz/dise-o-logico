--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un flip flop t
entity fft is
   port( 
	  t:in   bit;
	  clk:in bit;
          q:out  bit
       );
end entity fft;

architecture beh of fft is
	signal interna:bit;
begin
	q <= interna;
	process(clk)
begin

	if clk'event and clk='1' then
		if t='1' then 
			interna <= not interna;
		end if;
	end if;
	
	end process;
end architecture beh;
 

