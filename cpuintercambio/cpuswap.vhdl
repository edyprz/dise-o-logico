--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion del cpu de intercambio
library ieee;
use ieee.std_logic_1164.all;

entity cpuswap is
   port( 

	  clk:   in std_logic;
	  inst:  in std_logic_vector(5 downto 0);--instrucciones
	  done:  out std_logic

       );
end entity cpuswap;

architecture beh of cpuswap is
signal a:std_logic_vector(2 downto 0);
signal reg,at1,at0,at2,a1,a2:std_logic;
signal cop:std_logic;
signal ext:std_logic;
signal c_2_r0:std_logic;
signal c_2_r1:std_logic;
signal rt_2_bt:std_logic_vector(3 downto 0);
signal r1_2_b1:std_logic_vector(3 downto 0);
signal r0_2_b0:std_logic_vector(3 downto 0);
signal busw:std_logic_vector(3 downto 0);

component buffer3e is
   port( 
	  ent:  in std_logic_vector(3 downto 0);
	  h:    in std_logic;	
          sal:  out std_logic_vector(3 downto 0)
       );

end component buffer3e;

component registro is
   port( 
	  ent:  in std_logic_vector(3 downto 0);
	  h:    in std_logic;
	  clk:  in std_logic;	
          sal:  out std_logic_vector(3 downto 0)
       );

end component registro;

component control is
   port( 

	  clk:   in std_logic;
	  swap:  in std_logic;
	  t:    out std_logic_vector(2 downto 0);
	  done:  out std_logic

       );
end component control;

component compand2 is
   port( 

	  x:   in std_logic;
	  y:  in std_logic;
	  f:    out std_logic

       );
end component compand2;

component compor2 is
   port( 

	  x:   in std_logic;
	  y:  in std_logic;
	  f:    out std_logic

       );
end component compor2;

component compnot1 is
   port( 

	  x:   in std_logic;
	  f:    out std_logic

       );
end component compnot1;


begin

	u0:control
		port map(
			swap=>cop,
			t=>a,
			clk=>clk,
			done=>done
		);

	r0:registro
		port map(
			ent=>busw,
			sal=>r0_2_b0,
			clk=>clk,
			h=>c_2_r0
		);

	r1:registro
		port map(
			ent=>busw,
			sal=>r1_2_b1,
			clk=>clk,
			h=>c_2_r1
		);
	r2:registro
		port map(
			ent=>busw,
			sal=>rt_2_bt,
			clk=>clk,
			h=>at0
		);

	b0:buffer3e
		port map(
			ent=>inst(3 downto 0),
			h=>ext,
			sal=>busw
		);
	b1:buffer3e
		port map(
			ent=>r0_2_b0,
			h=>a(0),
			sal=>busw
		);
	b2:buffer3e
		port map(
			ent=>r1_2_b1,
			h=>a(1),
			sal=>busw
		);
	b3:buffer3e
		port map(
			ent=>rt_2_bt,
			h=>a(2),
			sal=>busw
		);

	c0:compnot1
		port map(
			x=>reg,
			f=>a1
		);
	c1:compnot1
		port map(
			x=>cop,
			f=>ext
		);
	c2:compand2
		port map(
			x=>a1,
			y=>ext,
			f=>a2
		);

	c3:compor2
		port map(
			x=>a2,
			y=>a(1),
			f=>c_2_r0
		);
	c4:compor2
		port map(
			x=>reg,
			y=>a(2),
			f=>c_2_r1
		);



end architecture beh;
				
