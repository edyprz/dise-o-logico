--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de una compuerta XOR
entity compxor2 is
   port( 

	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end entity compxor2 ;

architecture beh of compxor2 is

signal a1,a2,a3,a4:bit;

component compand2 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );

end component compand2;

component compnot1 is
   port( 
	  x:in   bit;
          f:out  bit
       );
end component compnot1;

component compor2 is
   port( 

	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end component compor2;



begin
 

a0<=x;
a1<=y;

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
			y=>a1,
			f=>a4
		);


	u3:compand2
		port map(
			x=>a0,
			y=>a3,
			f=>a5
		);


	u4:compor2
		port map(
			x=>a4,
			y=>a5,
			f=>f
		);




end architecture beh;
				
