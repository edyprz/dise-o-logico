--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un sumador restador de 4 bits con banderas
use work.dl_lib.all;
entity addsub4f is
   port( 
	  x:in   bit_vector(3 downto 0);
	  y:in   bit_vector(3 downto 0);
	  sub:in bit;
	  v:out bit;
	  z:out bit;
	  cout:out bit;
	  n:out bit;
          s:out  bit_vector(3 downto 0)
       );
end entity addsub4f;

architecture beh of addsub4f is

signal c0,c2,c3,c4,a: bit_vector(3 downto 0);
signal c1,c10,c5,c6,c7,c8: bit;

begin

	
	n<=a(3);
	cout<=c5;
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
