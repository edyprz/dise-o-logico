--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito mediante sentencia concurrente
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
   --setencia concurrente
   f <=  not(not((a xor b) and (b xor c)) and ((not(not(a)or not(b)))or (not((a or c))) ));
end architecture beh;
				
