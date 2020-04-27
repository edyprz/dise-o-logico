--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito
entity circuito is
   port( 

	  x1:in   bit;
	  x2:in   bit;	
          f:out  bit
       );
end entity circuito;

architecture beh of circuito is
begin
   --descripcion mediante un proceso
process(x1,x2)
begin
 if (x1 = '1') then
if (x2 = '0') then
f<='0';
else
f<= '1';
end if;
else
f<= '1';
end if;
end process;
end architecture beh;
