--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito secuencial con fft
use work.dl_bib.all;
entity sec2fft is
   port( 
	  w:  in   bit;
	  clk:in   bit;
	  z:  out  bit
       );
end entity sec2fft;

architecture beh of sec2fft is	

signal a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11:bit;

begin



	u0:fft
		port map(
			t=>a1,
			clk=>clk,
			q=>a2,
			qn=>a3
		);
   
	u1:fft
		port map(
			t=>a4,
			clk=>clk,
			q=>a5
		);

        u2:compor2
		
		port map(
			x=>a7,
			y=>a6,
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
			x=>a8,
			y=>a2,
			f=>a7
		);

	u5:compor2
		port map(
			x=>a9,
			y=>a5,
			f=>a4
		);

        u6:compnot1
		port map(
			x=>w,
			f=>a8
		);

        u7:compand2
		port map(
			x=>w,
			y=>a3,
			f=>a9
		);

        u8:compand2
		port map(
			x=>w,
			y=>a2,
			f=>a10
		);

        u9:compand2
		port map(
			x=>w,
			y=>a5,
			f=>a11
		);

        u10:compor2
		port map(
			x=>a10,
			y=>a11,
			f=>z
		);
end architecture beh;
