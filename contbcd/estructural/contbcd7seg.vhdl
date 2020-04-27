--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un contador bcd
use work.dl_lib.all;
entity contbcd7seg is
   port( 
	  clk:in bit;
          sal:out  bit_vector(6 downto 0)
       );
end entity contbcd7seg;

architecture beh of contbcd7seg is
signal b:bit_vector(3 downto 0);
begin

u0:contbcd
port map(
clk=>clk,
a=>b
);

u1:decobcd7seg
port map(
ent=>b,
sal=>sal
);
end architecture beh;
