--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito secuencial con ffd
use work.dl_bib.all;
entity sec2ffd is
   port( 
	  w:  in   bit;
	  clk:in   bit;
	  z:  out  bit
       );
end entity sec2ffd;

architecture beh of sec2ffd is

signal a1,a2,a3,a4,a5,a6,a7,a8,a9:bit;

begin



	u0:ffd
		port map(
			d=>a1,
			clk=>clk,
			q=>a2,
			qn=>a3
		);
   
	u1:ffd
		port map(
			d=>a4,
			clk=>clk,
			q=>a5,
			qn=>a6
		);

        u2:compand2
		
		port map(
			x=>a7,
			y=>w,
			f=>a1
		);


        u3:compand3
		port map(
			x=>a3,
			y=>w,
			z=>a6,
			f=>a4
		);

        u4:compand2
		port map(
			x=>a8,
			y=>w,
			f=>z
		);
        
        u5:compxor2
		port map(
			x=>a2,
			y=>a5,
			f=>a8
		);

	 u6:compxor2
		port map(
			x=>a2,
			y=>a5,
			f=>a7
		);

end architecture beh;
