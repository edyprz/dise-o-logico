--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para contbcdffrs no simplificado
 
entity tb_contbcdffrs is
end entity tb_contbcdffrs;
 
architecture beh of tb_contbcdffrs is 
    component contbcdffrs
    port(
         clk : in  bit;
         a : out bit_vector(3 downto 0)
        );
    end component contbcdffrs;

    signal clk:bit := '0';
    signal a:bit_vector(3 downto 0);
 
begin 
   u0:contbcdffrs 
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
