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

	signal abc:bit_vector(2 downto 0);

begin
	abc<=a & b & c; 

  with abc select f <= '0' when "000" ,
		       '0' when "111" ,
		       '0' when "110" ,
		       '1' when others ;

end architecture beh;


