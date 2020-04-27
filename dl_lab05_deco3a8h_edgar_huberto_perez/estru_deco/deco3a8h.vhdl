--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador de 3 a 8 con enable mediante sentencias concurrentes
use work.dl_lib.all;
entity deco3a8h is
   port( 

    entrada:in   bit_vector(2 downto 0);
    salida :out  bit_vector(7 downto 0);
	  e:in   bit
	
       );
end entity deco3a8h ;


architecture beh of deco3a8h is

signal a0,a1,a2,a3: bit;

begin 

c1:compnot1
port map(
x=> entrada(0),
f=> a1
);

c2:compand2
port map(
x=> a1,
y=> e,
f=> a2
);

c3:compand2
port map(
x=> entrada(0),
y=> e,
f=> a3
);

c4:deco2a4h
port map(
a=> entrada(2),
b=> entrada(1),
e=> a2,
m0=> salida(0),
m1=> salida(1),
m2=> salida(2),
m3=> salida(3)
);

c5:deco2a4h
port map(
a=> entrada(2),
b=> entrada(1),
e=> a3,
m0=> salida(4),
m1=> salida(5),
m2=> salida(6),
m3=> salida(7)
);
end architecture beh;
