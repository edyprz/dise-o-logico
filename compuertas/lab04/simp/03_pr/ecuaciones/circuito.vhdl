--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito
entity circuito is
   port( 

	  a:in   bit;
	  b:in   bit;
	  c:in   bit;	
          f:out  bit
       );
end entity circuito ;

architecture beh of circuito is
begin
   --descripcion mediante un proceso
process(a,b,c)
begin
if a = b then 
  if c = b then
   f<= '0';
if b = '1' then
if c = '0' then
f<= '0';
else
f<= '0';
end if;
else
f<='0';
end if;
else
f<='1';
end if;
else

f<= '1';

end if;
end process;
end architecture beh;
