--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un latch rs con habilitacion
entity latchrsh is
   port( 
	  r:in   bit;
	  s:in   bit;
	  clk:in bit;
	  q:out bit;
          qn:out  bit
       );
end entity latchrsh;

architecture beh of latchrsh is
begin
	process(clk,r,s)
begin

	if s='1' and r='0' and clk='1' then 
		q<='0';
		qn<='1';
	end if;
	
	end process;
end architecture beh;
 

