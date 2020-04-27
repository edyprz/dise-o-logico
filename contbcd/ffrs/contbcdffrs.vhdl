--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un contador bcd con ffjk
use work.dl_lib.all;
entity contbcdffrs is
   port( 
	  clk:in bit;
          a:out  bit_vector(3 downto 0)
       );
end entity contbcdffrs;

architecture beh of contbcdffrs is
signal x,b,c,d:bit_vector(3 downto 0);
begin
a<=x;
a(0)<=c(0);
a(0)<=b(0);


losffp:for i in 0 to 3 generate
u0:ffrs
port map(
clk=>clk,
r=>b(i),
s=>c(i),
q=>a(i),
qn=>d(i)
);
end generate losffp;

u1:compand3
port map(
x=>x(2),
y=>x(1),
z=>x(0),
f=>c(3)
);

u2:compand2
port map(
x=>x(1),
y=>x(0),
f=>b(3)
);

u3:compand3
port map(
x=>d(2),
y=>x(1),
z=>x(0),
f=>c(2)
);

u4:compand3
port map(
x=>x(2),
y=>x(1),
z=>x(0),
f=>b(2)
);

u5:compand3
port map(
x=>d(3),
y=>d(1),
z=>x(0),
f=>c(1)
);

u6:compand2
port map(
x=>x(1),
y=>x(0),
f=>b(1)
);


end architecture beh;
