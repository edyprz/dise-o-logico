--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta XOR
entity compxor2 is
   port( 

	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end entity compxor2;

architecture beh of compxor2 is
begin
	--proceso
	process(x,y)
		begin

		if x = y then
			f<='0';
		else
			f<='1';
		end if;

	end process;
end architecture beh;
				
