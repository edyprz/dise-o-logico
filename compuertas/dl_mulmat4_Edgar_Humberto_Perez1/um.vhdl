--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de la unidad multiplicadora
entity um is
   port( 
	  mi:in   bit;
	  sin:in   bit;
	  qi:in bit;
	  cin:in bit;
	  cout:out bit;
	  qs:out bit;
          mio:out  bit;
          sout:out  bit
       );
end entity um;

architecture beh of um is


	component compand2 is
   port( 

	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end component compand2;


	component fulladd is
   port( 
          x:in   bit;
	  y:in   bit;
	  cin:in bit;
	  cout:out bit;
          r:out  bit
	  
       );
end component fulladd;

signal a1,a2,a3,a4,a5,a6,a7:bit;

begin 


mio<=mi;
qs<=qi;


u0:compand2
		port map(
			x=>qi,
			y=>mi,
			f=>a1
		);

u1:fulladd

		port map(
			x=>a1,
			y=>sin,
			cin=>cin,
			cout=>cout,
			r=>sout
		); 
 
end architecture beh;
