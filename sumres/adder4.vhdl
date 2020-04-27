--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un sumador de 4 bits 
entity adder4 is
   port( 
	  x:in   bit_vector(3 downto 0);
	  y:in   bit_vector(3 downto 0);
	  cin:in bit;
	  n3:out bit;
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

signal d0,d1,d2,d3,d4:bit;

begin

n3<=d3;

	u0:fulladd
		port map(
			x=>x(0),
			y=>y(0),
			cin=>cin,
			cout=>d1,
			r=>r(0)
		);
   
	u1:fulladd
		port map(
			x=>x(1),
			y=>y(1),
			cin=>d1,
			cout=>d2,
			r=>r(1)
		);
 
	u2:fulladd
		port map(
			x=>x(2),
			y=>y(2),
			cin=>d2,
			cout=>d3,
			r=>r(2)
		);

	u3:fulladd
		port map(
			x=>x(3),
			y=>y(3),
			cin=>d3,
			cout=>cout,
			r=>r(3)
		);

end architecture beh;  
