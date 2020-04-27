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
   --setencia concurrente
   f <=  not(x1) or x2 ;
end architecture beh;
				
