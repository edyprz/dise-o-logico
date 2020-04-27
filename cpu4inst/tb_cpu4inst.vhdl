--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para sumador de 2 bits
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity tb_cpu4inst is
end entity tb_cpu4inst;
 
architecture beh of tb_cpu4inst is 
    component cpu4inst
    port(
	  inst:   in std_logic_vector(7 downto 0);
	   clk:   in std_logic;
	  done:   out std_logic
        );
    end component cpu4inst;

    signal inst:std_logic_vector(7 downto 0):="00000000" ;
    signal clk:std_logic:='0' ;
    signal done:std_logic ;

begin 
	u0:cpu4inst 
   port map(
          inst=> inst,
	  clk => clk,
	  done => done
           );
 process
   begin
      wait for 10 ns;
      clk <= not clk;	
   end process;

   process
   begin
      wait for 40 ns;
      inst <= "00101000";
      wait for 40 ns;
      inst <= "00111101";
      wait for 40 ns;
      inst <= "11000110";
   end process;

end architecture beh;
