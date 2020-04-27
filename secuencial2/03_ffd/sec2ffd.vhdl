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

signal a1,a2,a3,a4,a5,a6,a7,a8,a9,a10:bit;

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

        u2:compor2
		
		port map(
			x=>a7,
			y=>a8,
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
			x=>a5,
			y=>w,
			f=>a8
		);
        
        u5:compand2
		port map(
			x=>a2,
			y=>w,
			f=>a7
		);

	 u6:compand2
		port map(
			x=>w,
			y=>a2,
			f=>a9
		);

	 u7:compand2
		port map(
			x=>w,
			y=>a5,
			f=>a10
		);
	 u8:compor2
		port map(
			x=>a9,
			y=>a10,
			f=>z
		);

end architecture beh;
