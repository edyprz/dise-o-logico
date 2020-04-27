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

 abc<= a & b & c;
 f <= '0' when abc = "000" else 
      '0' when abc = "111" else 
      '0' when abc = "110" else 
      '1' ;
           
end architecture beh;


