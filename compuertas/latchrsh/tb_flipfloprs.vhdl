--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para el latch rs con habilitacion
 
entity tb_flipfloprs is
end entity tb_flipfloprs;
 
architecture beh of tb_flipfloprs is 
    component flipfloprs
    port(
          r:in   bit;
	  s:in   bit;
	  clk:in bit;
	  q:out bit;
          qn:out  bit
        );
    end component flipfloprs;

    signal botonr:bit:='0' ;
    signal botons:bit:='0' ;
    signal botonclk:bit:='0' ;
    signal ledq:bit;
    signal ledqn:bit;
 
begin 
	u0:flipfloprs 

   port map(
          r => botonr,
	  s => botons,
	  clk => botonclk,
          q => ledq,
	  qn=> ledqn
	 
           );

   process
   begin
      wait for 40 ns;
      botonclk <= '0' ;
      wait for 40 ns;
      botonclk <= '1';		
   end process;

 process
   begin
      wait for 20 ns;
      botonr <= '0';
      wait for 20 ns;
      botonr <= '1';					
   end process;

process
   begin
      wait for 10 ns;
      botons <= '0';
      wait for 10 ns;
      botons <= '1';					
   end process;
end architecture beh;
