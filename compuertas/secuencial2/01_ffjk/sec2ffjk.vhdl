--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito secuencial con ffjk
use work.dl_bib.all;
entity sec2ffjk is
   port( 
	  w:  in   bit;
	  clk:in   bit;
	  z:  out  bit
       );
end entity sec2ffjk;

architecture beh of sec2ffjk is
	
signal a1,a2,a3,a4,a5,a6,a7,a8,a9:bit;

begin


	u0:ffjk
		port map(
			j=>a1,
			k=>a2,
			clk=>clk,
			q=>a4,
			qn=>a5
		);
   
	u1:ffjk
		port map(
			j=>a6,
			k=>'1',
			clk=>clk,
			q=>a7
		);

        u2:compand2
		port map(
			x=>a7,
			y=>w,
			f=>a1
		);


        u3:compand2
		port map(
			x=>a5,
			y=>w,
			f=>a6
		);

        u4:compand2
		port map(
			x=>a9,
			y=>w,
			f=>z
		);
        u5:compnot1
		port map(
			x=>w,
			f=>a2
		);

        u6:compxor2
		port map(
			x=>a4,
			y=>a7,
			f=>a9
		);
end architecture beh;
