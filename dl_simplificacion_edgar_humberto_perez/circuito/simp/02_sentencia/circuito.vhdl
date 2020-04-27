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
   --setencia concurrente
   
   f <= (not(a) and c) or (a xor b) ;

end architecture beh;


