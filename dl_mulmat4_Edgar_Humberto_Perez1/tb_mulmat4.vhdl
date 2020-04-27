--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para un multiplicador
 
entity tb_mulmat4 is
end entity tb_mulmat4;
 
architecture beh of tb_mulmat4 is 
    component mulmat4
    port(
          m:in   bit_vector(3 downto 0);
	  q:in bit_vector(3 downto 0);
	  r:out bit_vector(6 downto 0)

        );
    end component mulmat4;

    signal botonm:bit_vector(3 downto 0) ;
    signal botonq:bit_vector(3 downto 0) ;
    signal ledr:bit_vector(6 downto 0);
begin 
	u0:mulmat4
   port map(

          m=>botonm,
	  q=>botonq,
          r=>ledr
           );
 process
   begin
      wait for 80 ns;
      botonm <= "0011";
      wait for 80 ns;
      botonm <= "0100";		
   end process;

   process
   begin
      wait for 40 ns;
      botonq<= "0100";
      wait for 40 ns;
      botonq<= "1000";		
   end process;


end architecture beh;
