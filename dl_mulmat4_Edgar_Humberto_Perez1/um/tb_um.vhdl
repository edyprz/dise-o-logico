--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para un multiplicador  de 2 bits
 
entity tb_um is
end entity tb_um;
 
architecture beh of tb_um is 
    component um
    port(
          mi:in   bit;
	  sin:in   bit;
	  qi:in bit;
	  cin:in bit;
	  cout:out bit;
	  qs:out bit;
          mio:out  bit;
          sout:out  bit

        );
    end component um;

    signal botonmi:bit ;
    signal botonsin:bit ;
    signal botoncin:bit ;
    signal botonqi:bit ;
    signal ledcout:bit;
    signal ledmio:bit;
    signal ledqs:bit;
    signal ledsout:bit;
 
begin 
	u0:um 
   port map(

          mi=>botonmi,
	  sin=>botonsin,
	  qi=>botonqi,
	  cin=>botoncin,
	  cout=>ledcout,
          qs=>ledqs,
          mio=>ledmio,
          sout=>ledsout
           );
 process
   begin
      wait for 80 ns;
      botonmi <= '0';
      wait for 80 ns;
      botonmi <= '1';		
   end process;

   process
   begin
      wait for 40 ns;
      botonqi<= '0';
      wait for 40 ns;
      botonqi<= '1';		
   end process;

 process
   begin
      wait for 20 ns;
      botonsin <= '0';
      wait for 20 ns;
      botonsin <= '1';					
   end process;

process
   begin
      wait for 10 ns;
      botoncin <= '0';
      wait for 10 ns;
      botoncin <= '1';					
   end process;

end architecture beh;
