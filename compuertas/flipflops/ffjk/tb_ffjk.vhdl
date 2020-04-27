--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para n flip flop jk
 
entity tb_ffjk is
end entity tb_ffjk;
 
architecture beh of tb_ffjk is 
    component ffjk
    port(
           j:in   bit;
	  clk:in bit;
	  k:in bit;
          q:out  bit
        );
    end component ffjk;

    signal botonj:bit:='0' ;
    signal botonclk:bit:='0' ;
    signal botonk:bit:='0';
    signal ledq:bit;
 
begin 
	u0:ffjk

   port map(
          j=> botonj,
	  clk => botonclk,
	  k => botonk,
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
      botonj <= '0';
      wait for 10 ns;
      botonj <= '1';
      wait for 50 ns;
      botonj <= '0';
      wait for 10 ns;
      botonj <= '1';
      wait for 5 ns;
      botonj <= '0';					
   end process;

process
   begin
      wait for 45 ns;
      botonk <= '0';
      wait for 10 ns;
      botonk <= '1';
      wait for 10 ns;
      botonk <= '0';
      wait for 10 ns;
      botonk <= '1';
      wait for 10 ns;
      botonk <= '0';					
   end process;


end architecture beh;
