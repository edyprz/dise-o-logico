--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd binario a hexadecimal de 7 segmentos 
use work.dl_lib.all;
entity decobin2hex7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobin2hex7seg;

architecture beh of decobin2hex7seg is

begin

 sal<=lafuncion(ent);

end architecture beh;
				
