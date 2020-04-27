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
	
signal a:bit_vector(9 downto 0);

begin

	u0:ffjk
		port map(
			j=>a(1),
			k=>a(2),
			clk=>clk,
			q=>a(3),
			qn=>a(4)
		);
   
	u1:ffjk
		port map(
			j=>a(5),
			k=>'1',
			clk=>clk,
			q=>a(6)
		);

        u2:compand2
		port map(
			x=>w,
			y=>a(6),
			f=>a(1)
		);


        u3:compand2
		port map(
			x=>a(4),
			y=>w,
			f=>a(5)
		);

        u4:compand2
		port map(
			x=>w,
			y=>a(3),
			f=>a(7)
		);
        u5:compnot1
		port map(
			x=>w,
			f=>a(2)
		);

	 u6:compand2
		port map(
			x=>w,
			y=>a(6),
			f=>a(8)
		);

	 u7:compor2
		port map(
			x=>a(7),
			y=>a(8),
			f=>z
		);

      
end architecture beh;
