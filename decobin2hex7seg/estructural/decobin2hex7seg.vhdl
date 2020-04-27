--Edgar Humberto Perez Martinez
--Ing Electronica

use work.dl_lib.all;
entity decobin2hex7seg is
   port( 

    ent:in   bit_vector(3 downto 0);
    sal:out  bit_vector(6 downto 0)
	
       );
end entity decobin2hex7seg ;


architecture beh of decobin2hex7seg is

signal a,b: bit_vector(3 downto 0);
signal c: bit_vector(35 downto 0);

begin 

a(3)<=ent(3);
a(2)<=ent(2);
a(1)<=ent(1);
a(0)<=ent(0);



u0:compnot1
port map(
x=> a(3),
f=> b(3)
);

u1:compnot1
port map(
x=> a(2),
f=> b(2)
);

u2:compnot1
port map(
x=> a(1),
f=> b(1)
);

u3:compnot1
port map(
x=> a(0),
f=> b(0)
);

c1:compor2
port map(
x=> b(1),
y=> a(3),
f=> c(0)
);

c2:compor2
port map(
x=> a(2),
y=> a(0),
f=> c(1)
);

c3:compor2
port map(
x=> b(3),
y=> a(0),
f=> c(2)
);

c4:compor2
port map(
x=> b(2),
y=> b(1),
f=> c(3)
);

c5:compor3
port map(
x=> b(3),
y=> a(2),
z=> a(1),
f=> c(4)
);

c6:compor3
port map(
x=> a(3),
y=> b(2),
z=> b(0),
f=> c(5)
);

c7:compor2
port map(
x=> a(3),
y=> a(2),
f=> c(6)
);

c8:compor2
port map(
x=> a(2),
y=> a(0),
f=> c(7)
);

c9:compor3
port map(
x=> b(3),
y=> a(1),
z=> b(0),
f=> c(8)
);

c10:compor3
port map(
x=> a(3),
y=> b(1),
z=> b(0),
f=> c(9)
);

c11:compor3
port map(
x=> a(3),
y=> a(1),
z=> a(0),
f=> c(10)
);


c12:compor2
port map(
x=> a(1),
y=> b(0),
f=> c(11)
);


c13:compor2
port map(
x=> b(3),
y=> a(2),
f=> c(12)
);


c14:compor2
port map(
x=> a(3),
y=> b(2),
f=> c(13)
);


c15:compor2
port map(
x=> a(3),
y=> b(0),
f=> c(14)
);


c16:compor2
port map(
x=> a(3),
y=> a(1),
f=> c(15)
);


c17:compor2
port map(
x=> b(3),
y=> a(1),
f=> c(16)
);


c18:compor3
port map(
x=> b(2),
y=> b(1),
z=> a(0),
f=> c(17)
);

c19:compor3
port map(
x=> a(3),
y=> a(2),
z=> b(1),
f=> c(18)
);

c20:compor3
port map(
x=> a(2),
y=> a(1),
z=> a(0),
f=> c(19)
);

c21:compor3
port map(
x=> b(2),
y=> a(1),
z=> b(0),
f=> c(20)
);

c22:compor3
port map(
x=> b(3),
y=> a(2),
z=> b(0),
f=> c(21)
);

c23:compor2
port map(
x=> b(1),
y=> a(0),
f=> c(22)
);

c24:compor2
port map(
x=> b(3),
y=> b(2),
f=> c(23)
);

c25:compor2
port map(
x=> a(2),
y=> a(0),
f=> c(24)
);

c26:compor2
port map(
x=> b(3),
y=> b(1),
f=> c(25)
);

c27:compor2
port map(
x=> b(3),
y=> b(1),
f=> c(26)
);

c28:compor2
port map(
x=> a(1),
y=> a(0),
f=> c(27)
);

c29:compor2
port map(
x=> b(2),
y=> a(0),
f=> c(28)
);

c30:compor2
port map(
x=> b(3),
y=> a(2),
f=> c(29)
);

c31:compor3
port map(
x=> a(3),
y=> b(2),
z=> a(1),
f=> c(30)
);

c32:compor2
port map(
x=> b(1),
y=> a(0),
f=> c(31)
);

c33:compor2
port map(
x=> b(3),
y=> a(2),
f=> c(32)
);

c34:compor2
port map(
x=> b(3),
y=> b(0),
f=> c(33)
);

c35:compor3
port map(
x=> a(3),
y=> b(2),
z=> a(1),
f=> c(34)
);

c36:compor2
port map(
x=> a(2),
y=> b(1),
f=> c(35)
);


c37:compand6
port map(
x=> c(0),
y=> c(1),
z=> c(2),
w=> c(3),
r=> c(4),
j=> c(5),
f=> sal(6)
);


c38:compand5
port map(
x=> c(6),
y=> c(7),
z=> c(8),
w=> c(9),
r=> c(10),
f=> sal(5)
);

c39:compand5
port map(
x=> c(11),
y=> c(12),
z=> c(13),
w=> c(14),
r=> c(15),
f=> sal(4)
);

c40:compand6
port map(
x=> c(16),
y=> c(17),
z=> c(18),
w=> c(19),
r=> c(20),
j=> c(21),
f=> sal(3)
);


c41:compand4
port map(
x=> c(22),
y=> c(23),
z=> c(24),
w=> c(25),
f=> sal(2)
);


c42:compand5
port map(
x=> c(26),
y=> c(27),
z=> c(28),
w=> c(29),
r=> c(30),
f=> sal(1)
);


c43:compand5
port map(
x=> c(31),
y=> c(32),
z=> c(33),
w=> c(34),
r=> c(35),
f=> sal(0)
);


end architecture beh;
