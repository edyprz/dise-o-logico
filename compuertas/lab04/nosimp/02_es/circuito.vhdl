--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito no simplificado
entity circuito is
   port( 

	  a:in   bit;
	  b:in   bit;
	  c:in   bit;	
          f:out  bit
       );
end entity circuito ;

architecture beh of circuito is


component compnot1 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
          f:out  bit
       );
end component compnot1;

component compand2 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
          y:in   bit;
          f:out  bit
       );
end component compand2;

component compor2 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;
          f:out  bit
       );
end component compor2;

component compxor2 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end component compxor2;


signal a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15:bit;


begin
a0<=a;
a1<=b;
a2<=c;

u0:compnot1
port map(
x=>a0,
f=>a3
);

u1:compnot1
port map(
x=>a1,
f=>a4
);

u2:compxor2
port map(
x=>a0,
y=>a1,
f=>a5
);

u3:compxor2
port map(
x=>a1,
y=>a2,
f=>a7
);

u4:compor2
port map(
x=>a3,
y=>a4,
f=>a8
);

u5:compor2
port map(
x=>a0,
y=>a2,
f=>a10
);

u9:compnot1
port map(
x=>a8,
f=>a9
);

u10:compnot1
port map(
x=>a10,
f=>a11
);

u6:compand2
port map(
x=>a5,
y=>a7,
f=>a12
);


u7:compor2
port map(
x=>a9,
y=>a11,
f=>a13
);


u8:compand2
port map(
x=>a15,
y=>a13,
f=>a14
);


u11:compnot1
port map(
x=>a14,
f=>f
);

u12:compnot1
port map(
x=>a12,
f=>a15
);
end architecture beh;
				
