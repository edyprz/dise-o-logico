--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para el latch rs con habilitacion
 
entity tb_ffd is
end entity tb_ffd;
 
architecture beh of tb_ffd is 
    component ffd
    port(
           d:in   bit;
	  clk:in bit;
	  q:out bit;
          qn:out  bit
        );
    end component ffd;

    signal botond:bit:='0' ;
    signal botonclk:bit:='0' ;
    signal ledq:bit;
    signal ledqn:bit;
 
begin 
	u0:ffd

   port map(
          d=> botond,
	  clk => botonclk,
          q => ledq,
	  qn=> ledqn
	 
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
      botond <= '0';
      wait for 10 ns;
      botond <= '1';
      wait for 30 ns;
      botond <= '0';
      wait for 10 ns;
      botond <= '1';
      wait for 25 ns;
      botond <= '0';					
   end process;


end architecture beh;
