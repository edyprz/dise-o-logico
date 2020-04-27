--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito no simplificado
entity circuito is
   port( 

	  x1:in   bit;
	  x2:in   bit;	
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
	  z:in   bit;	
          f:out  bit
       );
end component compor2;

signal a0,a1,a2,a3,a4,a5,a6:bit;


begin
a0<=x1;
a1<=x2;

u0:compnot1
port map(
x=>a0,
f=>a2
);

u1:compnot1
port map(
x=>a1,
f=>a3
);

u2:compand2
port map(
x=>a2,
y=>a3,
f=>a4
);

u3:compand2
port map(
x=>a2,
y=>a1,
f=>a5
);

u4:compand2
port map(
x=>a0,
y=>a1,
f=>a6
);

u5:compor2
port map(
x=>a4,
y=>a5,
z=>a6,
f=>f
);


end architecture beh;
				
