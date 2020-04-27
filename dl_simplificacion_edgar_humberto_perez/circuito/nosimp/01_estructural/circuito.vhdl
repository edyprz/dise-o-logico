--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito sin simplificacion
use work.dl_bib.all;
entity circuito is
   port( 

	  a:in   bit;
	  b:in   bit;
	  c:in   bit;
          f:out  bit
       );
end entity circuito;

architecture beh of circuito is

signal a0,a1,a2,a3,a4,a5,a6,a7,a8:bit;

begin

	u0:compxor2
		port map(
			x=>a,
			y=>b,
			f=>a0
		);

	u1:compxor2
		port map(
			x=>b,
			y=>c,
			f=>a1
		);

	u2:compnor2
		port map(
			x=>a2,
			y=>a3,
			f=>a4
		);

	u3:compnor2
		port map(
			x=>a,
			y=>c,
			f=>a5
		);

	u4:compnot1
		port map(
			x=>a,
			f=>a2
		);

	u5:compnot1
		port map(
			x=>b,
			f=>a3
		);

	u6:compnand2
		port map(
			x=>a0,
			y=>a1,
			f=>a6
		);

	u7:compor2
		port map(
			x=>a4,
			y=>a5,
			f=>a7
		);

	u8:compnand2
		port map(
			x=>a6,
			y=>a7,
			f=>f
		);


end architecture beh;


