--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para contbcd no simplificado
 
entity tb_contbcd is
end entity tb_contbcd;
 
architecture beh of tb_contbcd is 
    component contbcd
    port(
         clk : in  bit;
         a : out bit_vector(6 downto 0)
        );
    end component contbcd;

    signal clk:bit := '0';
    signal a:bit_vector(6 downto 0);
 
begin 
   u0:contbcd 
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
