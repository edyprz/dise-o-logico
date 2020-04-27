--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para n flip flop t
 
entity tb_fft is
end entity tb_fft;
 
architecture beh of tb_fft is 
    component fft
    port(
           t:in   bit;
	  clk:in bit;
          q:out  bit
        );
    end component fft;

    signal botont:bit:='0' ;
    signal botonclk:bit:='0' ;
    signal ledq:bit;
 
begin 
	u0:fft

   port map(
          t=> botont,
	  clk => botonclk,
          q => ledq
	
	 
           );

   process
   begin
      wait for 10 ns;
      botonclk <= '0' ;
      wait for 10 ns;
      botonclk <= '1';		
   end process;

 process
   begin
      wait for 5 ns;
      botont <= '0';
      wait for 30 ns;
      botont <= '1';
      wait for 30 ns;
      botont <= '0';
      wait for 10 ns;
      botont <= '1';
      wait for 5 ns;
      botont <= '0';					
   end process;


end architecture beh;
