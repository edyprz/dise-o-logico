entity circuito is
   port( 

	  x:in   bit_vector(3 downto 0);
          f:out  bit
       );
end entity circuito;

architecture beh of circuito is
begin
   --setencia concurrente
   f <=  (not(x(0))and not(x(2)) and not (x(3))) or
 	(x(1) and not(x(2)) and x(3)) or
	(x(0)and x(2) and x(3)) or
	(not(x(1))and x(2) and not (x(3)));
end architecture beh;
			
