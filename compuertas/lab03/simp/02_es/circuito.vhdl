--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito simplificado
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


component compor2 is
   port( 
--un puerto de entrada(in) y uno de salida(out)
	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end component compor2;

signal a0,a1,a2:bit;


begin
a0<=x1;
a1<=x2;

u0:compnot1
port map(
x=>a0,
f=>a2
);



u1:compor2
port map(
x=>a2,
y=>a1,
f=>f
);


end architecture beh;
				
