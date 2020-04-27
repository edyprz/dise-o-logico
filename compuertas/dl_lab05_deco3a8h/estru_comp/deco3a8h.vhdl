--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador de 3 a 8 con enable mediante sentencias concurrentes
entity deco3a8h is
   port( 

    entrada:in   bit_vector(2 downto 0);
    salida :out  bit_vector(7 downto 0);
	  e:in   bit
	
       );
end entity deco3a8h ;


architecture beh of deco3a8h is

signal a0,a1,a2,a3,a4,a5: bit;
--componentes


component compand3 is
   port( 

	  x:in   bit;
	  y:in   bit;
	  z:in   bit;
          
          f:out  bit
       );
end component compand3;

component compnot1 is
   port( 

	  x:in   bit;
          f:out  bit
       );
end component compnot1;


begin 

a0<= entrada(0);
a1<= entrada(1);
a2<= entrada(2);


c1:compnot1
port map(
x=> a0,
f=> a3
);

c2:compnot1
port map(
x=> a1,
f=> a4
);

c3:compnot1
port map(
x=> a2,
f=> a5
);


c4:compand3
port map(
x=> a3,
y=> a4,
z=> a5,

f=> salida(0)
);

c5:compand3
port map(
x=> a4,
y=> a5,
z=> a3,

f=> salida(1)
);

c6:compand3
port map(
x=> a1,
y=> a3,
z=> a5,

f=> salida(2)
);

c7:compand3
port map(
x=> a5,
y=> a1,
z=> a0,

f=> salida(3)
);

c8:compand3
port map(
x=> a2,
y=> a3,
z=> a4,

f=> salida(4)
);

c9:compand3
port map(
x=> a4,
y=> a2,
z=> a0,

f=> salida(5)
);

c10:compand3
port map(
x=> a3,
y=> a1,
z=> a2,

f=> salida(6)
);

c11:compand3
port map(
x=> a1,
y=> a0,
z=> a2,

f=> salida(7)
);
end architecture beh;
