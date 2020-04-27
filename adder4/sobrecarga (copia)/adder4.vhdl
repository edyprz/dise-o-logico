--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un sumador de 4 bits 
use work.dl_lib.all;
entity adder4 is
   port( 
	  a:in   bit_vector(3 downto 0);
	  b:in   bit_vector(3 downto 0);
	  cin:in bit;
	  cout:out bit;
          r:out  bit_vector(3 downto 0)
       );
end entity adder4;

architecture beh of adder4 is
begin

	r<= a+b;

end architecture beh;
