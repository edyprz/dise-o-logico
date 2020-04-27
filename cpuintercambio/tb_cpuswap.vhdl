--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para sumador de 2 bits
library ieee;
use ieee.std_logic_1164.all;
 
entity tb_cpuswap is
end entity tb_cpuswap;
 
architecture beh of tb_cpuswap is 
component cpuswap is
   port( 

	  clk:   in std_logic;
	  inst:  in std_logic_vector(5 downto 0);
	  done:  out std_logic

       );
end component cpuswap;


    signal clk:std_logic:='0' ;
    signal inst:std_logic_vector(5 downto 0);
    signal done:std_logic;
 
begin 
	u0:cpuswap 
   port map(
          clk => clk,
	  inst => inst,
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
      inst <= "001010";	
      wait for 60 ns;
      inst <= "011111";
      wait for 60 ns;
      inst <= "100000";		
   end process;


end architecture beh;
