--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un contador bcd
use work.dl_lib.all;
entity contbcd7seg is
   port( 
	  clk:in bit;
	  st:in bit;
	  rst:in bit;
	  seal:out bit;
          sal:out  bit_vector(6 downto 0)
       );
end entity contbcd7seg;

architecture beh of contbcd7seg is
signal b:bit_vector(3 downto 0);
begin

u0:contbcd
port map(
clk=>clk,
st=>st,
rst=>rst,
a=>b
);

u1:decobcd7seg
port map(
ent=>b,
seal=>seal,
sal=>sal
);
end architecture beh;
