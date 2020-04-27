--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un sumador restador de 4 bits con banderas
entity sumres is
   port( 
	  x:in   bit_vector(3 downto 0);
	  y:in   bit_vector(3 downto 0);
	  sub:in bit;
	  v:out bit;
	  z:out bit;
	  cut:out bit;
	  n:out bit;
          s:out  bit_vector(3 downto 0)
       );
end entity sumres;

architecture beh of sumres is
	
	component comp1 is
   port( 
          y:in   bit_vector(3 downto 0);
	  sub:in bit;
	  yc:out   bit_vector(3 downto 0)
	  
       );
end component comp1;

component adder4 is
   port( 
          x:in   bit_vector(3 downto 0);
	  y:in   bit_vector(3 downto 0);
	  cin:in bit;
	  n3:out bit;
	  cout:out bit;
          r:out  bit_vector(3 downto 0)
	  
       );
end component adder4;

component compxor2 is
   port( 
         x:in   bit;
	  y:in   bit;	
          f:out  bit
	  
       );
end component compxor2;

component fulladd is
   port( 
          x:in   bit;
	  y:in   bit;
	  cin:in bit;
	  cout:out bit;
          r:out  bit
	  
       );
end component fulladd;

component compnor4 is
   port( 
          x:in   bit;
	  y:in   bit;
          w:in   bit;
	  z:in   bit;	
          f:out  bit
       );
end component compnor4;



signal c0,c2,c3,c4,a: bit_vector(3 downto 0);
signal c1,c10,c5,c6,c7,c8: bit;

begin

	
	
	n<=a(3);
	cut<=c5;
	s<=a;
	

	u0:comp1
		port map(
			y=>y,
			sub=>c1,
			yc=>c2
		);
   
	u1:adder4
		port map(
			y=>c2,
			x=>x,
			cin=>c1,
			n3=>c10,
			cout=>c5,
			r=>a
		);
 
	u2:compnor4
		port map(
			x=>a(3),
			y=>a(2),
                        w=>a(1),
			z=>a(0),
			f=>z
		);

	u3:compxor2
		port map(
			x=>c5,
			y=>c10,
			f=>v
		);

end architecture beh;
