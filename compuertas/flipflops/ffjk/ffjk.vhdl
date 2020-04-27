--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un flip flop jk
entity ffjk is
   port( 
	  j:in   bit;
	  clk:in bit;
	  k:in bit;
          q:out  bit
       );
end entity ffjk;

architecture beh of ffjk is
	signal interna:bit;
begin
	q <= interna;
	process(clk)
begin

	if clk'event and clk='1' then
		if j='0' and k='1' then
			interna <= '0';
		elsif j='1' and k='0' then
			interna <= '1';
		elsif j='1' and k='1' then
			interna <= not interna;
		end if;
	end if;
	
	end process;
end architecture beh;
 

