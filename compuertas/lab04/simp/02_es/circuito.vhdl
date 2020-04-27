--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito simplificado
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


signal a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14:bit;


begin
a1<=a;
a2<=b;
a3<=c;

u0:compnot1
port map(
x=>a1,
f=>a6
);



u1:compxor2
port map(
x=>a1,
y=>a2,
f=>a4
);


u3:compor2
port map(
x=>a4,
y=>a5,
f=>f
);



u2:compand2
port map(
x=>a6,
y=>a3,
f=>a5
);


end architecture beh;
				
