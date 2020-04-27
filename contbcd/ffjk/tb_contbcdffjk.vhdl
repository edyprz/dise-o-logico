--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para contbcdffjk no simplificado
 
entity tb_contbcdffjk is
end entity tb_contbcdffjk;
 
architecture beh of tb_contbcdffjk is 
    component contbcdffjk
    port(
         clk : in  bit;
         a : out bit_vector(3 downto 0)
        );
    end component contbcdffjk;

    signal clk:bit := '0';
    signal a:bit_vector(3 downto 0);
 
begin 
   unit:contbcdffjk 
   port map(
          clk => clk,
          a => a
           );

   process
   begin
      wait for 10 ns;
      clk <= not clk ;
   end process;

end architecture beh;
