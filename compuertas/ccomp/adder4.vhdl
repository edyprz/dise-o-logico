--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un sumador de 4 bits 
entity adder4 is
   port( 
	  x:in   bit_vector(3 downto 0);
	  y:in   bit_vector(3 downto 0);
	  cin:in bit;
	  cout:out bit;
          r:out  bit_vector(3 downto 0)
       );
end entity adder4;

architecture beh of adder4 is
	
	component fulladd is
   port( 
          x:in   bit;
	  y:in   bit;
	  cin:in bit;
	  cout:out bit;
          r:out  bit
	  
       );
end component fulladd;

signal c0,c1,c2,c3,c4:bit;

begin

c0<=cin;
c4<=cout;


	u0:adder
		port map(
			x=>x(0),
			y=>y(0),
			cin=>c0,
			cout=>c1,
			r=>r(0)
		);
   
	u1:adder
		port map(
			x=>x(1),
			y=>y(1),
			cin=>c1,
			cout=>c2,
			r=>r(1)
		);
 
	u2:adder
		port map(
			x=>x(2),
			y=>y(2),
			cin=>c2,
			cout=>c3,
			r=>r(2)
		);

	u3:adder
		port map(
			x=>x(3),
			y=>y(3),
			cin=>c3,
			cout=>c4,
			r=>r(3)
		);

end architecture beh;
