--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un contador bcd con ffjk
use work.dl_lib.all;
entity contbcdffjk is
   port( 
	  clk:in bit;
          a:out  bit_vector(3 downto 0)
       );
end entity contbcdffjk;

architecture beh of contbcdffjk is
signal x,b,c,d:bit_vector(3 downto 0);
begin
a<=x;
b(0)<='1';
c(0)<='1';
d(0)<='0';
d(1)<='0';
d(2)<='0';
a(0)<=c(3);

losffp: for i in 0 to 3 generate
u0:ffjk
port map(
clk=>clk,
j=>b(i),
k=>c(i),
q=>x(i),
qn=>d(i)
);
end generate losffp;

u1:compand2
port map(
x=>d(0),
y=>x(0),
f=>b(1)
);

u2:compand2
port map(
x=>x(1),
y=>x(0),
f=>c(2)
);

u3:compand2
port map(
x=>x(1),
y=>x(0),
f=>b(2)
);

u4:compand3
port map(
x=>x(2),
y=>x(1),
z=>x(0),
f=>b(3)
);


end architecture beh;
