--Edgar Humberto Perez Martinez
--Ing Electronica

use work.dl_bib.all;
entity reg74194 is
   port( 
	  ent:  in   bit_vector(3 downto 0);
	  sel:  in   bit_vector(1 downto 0);
	  edd:  in   bit;
	  edi:  in   bit;
	  clk:  in   bit;
	  sal:  out  bit_vector(3 downto 0);
	  sdd:  out  bit;
	  sdi:  out  bit

       );
end entity reg74194;

architecture beh of reg74194 is
	
signal a,b:bit_vector(3 downto 0);

begin

ff: for i in 3 downto 0 generate  

	u0:ffd
		port map(
			d=>a(i),
			q=>b(i),
			clk=>clk
		);

	end generate ff;

	u1:mux4a1
		port map(
			f=>a(3),
			s=>sel,
			i0=>ent(3),
			i1=>edd,
			i2=>b(2),
			i3=>b(3)
		);

	u2:mux4a1
		port map(
			f=>a(2),
			s=>sel,
			i0=>ent(2),
			i1=>b(3),
			i2=>b(1),
			i3=>b(2)
		);

	u3:mux4a1
		port map(
			f=>a(1),
			s=>sel,
			i0=>ent(1),
			i1=>b(2),
			i2=>b(0),
			i3=>b(1)
		);


	u4:mux4a1
		port map(
			f=>a(0),
			s=>sel,
			i0=>ent(0),
			i1=>b(1),
			i2=>edi,
			i3=>b(0)
		);


	sdd<=b(0);
	sdi<=b(3);
	sal<=b;

end architecture beh;
