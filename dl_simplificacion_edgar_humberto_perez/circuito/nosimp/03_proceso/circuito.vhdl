--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito sin simplificacion
entity circuito is
   port( 

	  a:in   bit;
	  b:in   bit;
	  c:in   bit;
          f:out  bit
       );
end entity circuito;

architecture beh of circuito is
begin
	process(a,b,c)
		begin

		if ((a = b)and(b = c)) or ((a ='1') and (b ='1') and (c='0')) then
		f<= '0';
		else
		f<='1';
		end if;

	end process;

end architecture beh;


