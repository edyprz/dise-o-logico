--Edgar Humberto Perez Martinez
--Ing Electronica
--descripcion de la unidad de cpu4inst para el cpu de 4 instrucciones
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cpu4inst is
   port( 

	  inst:   in std_logic_vector(7 downto 0);
	   clk:   in std_logic;
	  done:   out std_logic

       );
end entity cpu4inst;

architecture beh of cpu4inst is

signal a:std_logic_vector(12 downto 0):="0000000000000";
signal busx:std_logic_vector(3 downto 0):="0000";
signal cntl_2_b5:std_logic_vector(3 downto 0):="0000";
signal tmp1_2_b4:std_logic_vector(3 downto 0):="0000";
signal alu_2_tmp1:std_logic_vector(3 downto 0):="0000";
signal tmp0_2_alu:std_logic_vector(3 downto 0):="0000";
signal r3_2_b3:std_logic_vector(3 downto 0):="0000";
signal r2_2_b2:std_logic_vector(3 downto 0):="0000";
signal r1_2_b1:std_logic_vector(3 downto 0):="0000";
signal r0_2_b0:std_logic_vector(3 downto 0):="0000";


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
	  inst:   in std_logic_vector(7 downto 0);
	   clk:   in std_logic;
	     q:   out std_logic_vector(12 downto 0);
	  busw:   out std_logic_vector(3 downto 0);
	  done:   out std_logic
       );

end component control;

component alu is
   port( 
	  x:  in std_logic_vector(3 downto 0);
	  y:  in std_logic_vector(3 downto 0);
	  h:    in std_logic;	
          f:  out std_logic_vector(3 downto 0)
       );

end component alu;

begin


	u0:control
		port map(
			inst=>inst,
			q=>a,
			clk=>clk,
			busw=>cntl_2_b5,
			done=>done
		);
	u1:alu
		port map(
			x=>tmp0_2_alu,
			y=>busx,
			h=>a(1),
			f=>alu_2_tmp1
		);
	r0:registro
		port map(
			ent=>busx,
			clk=>clk,
			h=>a(12),
			sal=>r0_2_b0
		);
	r1:registro
		port map(
			ent=>busx,
			clk=>clk,
			h=>a(10),
			sal=>r1_2_b1
		);
	r2:registro
		port map(
			ent=>busx,
			clk=>clk,
			h=>a(8),
			sal=>r2_2_b2
		);	
	r3:registro
		port map(
			ent=>busx,
			clk=>clk,
			h=>a(6),
			sal=>r3_2_b3
		);
	t0:registro
		port map(
			ent=>busx,
			clk=>clk,
			h=>a(4),
			sal=>tmp0_2_alu
		);
	t1:registro
		port map(
			ent=>alu_2_tmp1,
			clk=>clk,
			h=>a(3),
			sal=>tmp1_2_b4
		);

	b0:buffer3e
		port map(
			ent=>r0_2_b0,
			h=>a(11),
			sal=>busx
		);
	b1:buffer3e
		port map(
			ent=>r1_2_b1,
			h=>a(9),
			sal=>busx
		);
	b2:buffer3e
		port map(
			ent=>r2_2_b2,
			h=>a(7),
			sal=>busx
		);
	b3:buffer3e
		port map(
			ent=>r3_2_b3,
			h=>a(5),
			sal=>busx
		);
	b4:buffer3e
		port map(
			ent=>tmp1_2_b4,
			h=>a(2),
			sal=>busx
		);
	b5:buffer3e
		port map(
			ent=>cntl_2_b5,
			h=>a(0),
			sal=>busx
		);


end architecture beh;
