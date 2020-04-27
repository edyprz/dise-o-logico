--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito secuencial con ffrs
use work.dl_bib.all;
entity sec2ffrs is
   port( 
	  w:  in   bit;
	  clk:in   bit;
	  z:  out  bit
       );
end entity sec2ffrs;

architecture beh of sec2ffrs is

signal a1,a2,a3,a4,a5,a6,a7,a8,a9:bit;

begin



	u0:ffrs
		port map(
			s=>a1,
			r=>a2,
			clk=>clk,
			q=>a3,
			qn=>a4
		);
   
	u1:ffrs
		port map(
			s=>a5,
			r=>a6,
			clk=>clk,
			q=>a6,
			qn=>a7
		);

        u2:compand2
		
		port map(
			x=>a6,
			y=>w,
			f=>a1
		);


        u3:compand3
		port map(
			x=>a4,
			y=>w,
			z=>a7,
			f=>a5
		);

        u4:compand2
		port map(
			x=>a3,
			y=>w,
			f=>a8
		);
        
        u5:compnot1
		port map(
			x=>w,
			f=>a2
		);

        u6:compand2
		port map(
			x=>a6,
			y=>w,
			f=>a9
		);
	

        u7:compor2
		port map(
			x=>a8,
			y=>a9,
			f=>z
		);
end architecture beh;
