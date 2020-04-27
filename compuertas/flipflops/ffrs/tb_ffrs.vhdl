--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para n flip flop rs
 
entity tb_ffrs is
end entity tb_ffrs;
 
architecture beh of tb_ffrs is 
    component ffrs
    port(
           r:in   bit;
	   s:in   bit;
	  clk:in bit;
          q:out  bit
        );
    end component ffrs;

    signal botonr:bit:='0' ;
   signal botons:bit:='0' ;
    signal botonclk:bit:='0' ;
    signal ledq:bit;
 
begin 
	u0:ffrs

   port map(
          r=> botonr,
          s=> botons,
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
      botons <= '1';
      wait for 10 ns;
      botons <= '0';
      wait for 10 ns;
      botons <= '1';
      wait for 20 ns;
      botons <= '0';
      wait for 10 ns;
      botont <= '1';
      wait for 25 ns;
      botons <= '0';					
   end process;

 process
   begin
      wait for 35 ns;
      botonr <= '0';
      wait for 10 ns;
      botons <= '1';
      wait for 20 ns;
      botons <= '0';
      wait for 10 ns;
      botons <= '1';
      wait for 5 ns;
      botons <= '0';					
   end process;

end architecture beh;
