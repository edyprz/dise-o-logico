--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para sumador de 2 bits
 
entity tb_contmod8 is
end entity tb_contmod8;
 
architecture beh of tb_contmod8 is 
    component contmod8
    port(
	  clk:in bit;
          a:out  bit_vector(2 downto 0)
        );
    end component contmod8;

    signal clk:bit ;
    signal led:bit_vector(2 downto 0);
 
begin 
	u0:contmod8 
   port map(
          clk => clk,
	  a => led
           );
 process
   begin
      wait for 10 ns;
      clk <= not(clk);	
   end process;


end architecture beh;
