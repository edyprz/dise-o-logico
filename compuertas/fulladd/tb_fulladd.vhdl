--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para sumador de 2 bits
 
entity tb_fulladd is
end entity tb_fulladd;
 
architecture beh of tb_fulladd is 
    component fulladd
    port(
          x:in   bit;
	  y:in   bit;
	  cin:in bit;
	  cout:out bit;
          r:out  bit
        );
    end component fulladd;

    signal botonx:bit := '0';
    signal botony:bit := '0';
    signal botoncin:bit :='0';
    signal ledr0:bit;
    signal ledcout:bit;
 
begin 
   u0:fulladd 
   port map(
          x => botonx,
	  y => botony,
	  cin => botoncin,
          r => ledr0,
	  cout=> ledcout
           );
 process
   begin
      wait for 40 ns;
      botoncin <= '1';
      wait for 40 ns;
      botoncin <= '0';		
   end process;
   process

   begin
      wait for 20 ns;
      botonx <= '1';
      wait for 20 ns;
      botonx <= '0';		
   end process;

 process
   begin
      wait for 10 ns;
      botony <= '1';
      wait for 10 ns;
      botony <= '0';		
   end process;

end architecture beh;
