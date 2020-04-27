--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para contbcd7seg2dig no simplificado
 
entity tb_contbcd7seg2dig is
end entity tb_contbcd7seg2dig;
 
architecture beh of tb_contbcd7seg2dig is 
    component contbcd7seg2dig
    port(
         clk : in  bit;
	 st: in bit;
	 rst:in bit;
         sal1 : out bit_vector(6 downto 0);
         sal2 : out bit_vector(6 downto 0)
        );
    end component contbcd7seg2dig;

    signal clk,st,rst:bit := '0';
    signal sal1,sal2:bit_vector(6 downto 0);
 
begin 
   u0:contbcd7seg2dig 
   port map(
          clk => clk,
	  st=>st,
	  rst=>rst,
          sal1 => sal1,
	  sal2 => sal2
           );

   process
   begin
      wait for 10 ns;
      clk <= not clk ;
   end process;

process
   begin
      wait for 200 ns;
      st <= '1' ;
      wait for 20 ns;
      st <= '0' ;
   end process;

process
   begin
      wait for 400 ns;
      rst <= '1' ;
      wait for 20 ns;
      rst <= '0' ;

   end process;

end architecture beh;
