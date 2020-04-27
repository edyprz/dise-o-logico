--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un contador bcd
use work.dl_lib.all;
entity contbcd7seg2dig is
   port( 
	  clk:in bit;
	  st:in bit;
	  rst:in bit;
          sal1:out  bit_vector(6 downto 0);
          sal2:out  bit_vector(6 downto 0)
       );
end entity contbcd7seg2dig;

architecture beh of contbcd7seg2dig is
signal b:bit;
begin

u0:contbcd7seg
port map(
clk=>clk,
st=>st,
rst=>rst,
sal=>sal1,
seal=>b
);

u1:contbcd7seg
port map(
clk=>b,
st=>b,
rst=>rst,
sal=>sal2
);


end architecture beh;
