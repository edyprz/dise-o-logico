--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para contbcd7seg no simplificado
 
entity tb_contbcd7seg is
end entity tb_contbcd7seg;
 
architecture beh of tb_contbcd7seg is 
    component contbcd7seg
    port(
         clk : in  bit;
         sal : out bit_vector(6 downto 0)
        );
    end component contbcd7seg;

    signal clk:bit := '0';
    signal sal:bit_vector(6 downto 0);
 
begin 
   u0:contbcd7seg 
   port map(
          clk => clk,
          sal => sal
           );

   process
   begin
      wait for 10 ns;
      clk <= not clk ;
   end process;

end architecture beh;
