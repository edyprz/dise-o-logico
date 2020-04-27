--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para sumador de 2 bits
library ieee;
use ieee.std_logic_1164.all;
 
entity tb_control is
end entity tb_control;
 
architecture beh of tb_control is 
component control is
   port( 

	  clk:   in std_logic;
	  swap:  in std_logic;
	  t:  out std_logic_vector(2 downto 0);
	  done:  out std_logic

       );
end component control;


    signal clk:std_logic:='0' ;
    signal swap:std_logic:='0' ;
    signal t:std_logic_vector(2 downto 0);
    signal done:std_logic;
 
begin 
	u0:control 
   port map(
          clk => clk,
          swap => swap,
	  t => t,
	  done=>done
           );
 process
   begin
      wait for 10 ns;
      clk <= not(clk);	
   end process;

 process
   begin
      wait for 60 ns;
      swap <= '1';	
   end process;


end architecture beh;
