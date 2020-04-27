--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito simplificado
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

signal a0,a1,a2:bit;

begin

	u0:compnot1
		port map(
			x=>a,
			f=>a0
		);

	u1:compxor2
		port map(
			x=>a,
			y=>b,
			f=>a1
		);

	u2:compand2
		port map(
			x=>c,
			y=>a0,
			f=>a2
		);

	u3:compor2
		port map(
			x=>a1,
			y=>a2,
			f=>f
		);


end architecture beh;


