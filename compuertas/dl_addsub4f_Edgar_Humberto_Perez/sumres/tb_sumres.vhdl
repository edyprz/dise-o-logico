--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para sumador restador de 4 bits con banderas
 
entity tb_sumres is
end entity tb_sumres;
 
architecture beh of tb_sumres is 
    component sumres
    port(
         x:in   bit_vector(3 downto 0);
	  y:in   bit_vector(3 downto 0);
	  sub:in bit;
	  v:out bit;
	  z:out bit;
	  n:out bit;
	  cut:out bit;
          s:out  bit_vector(3 downto 0)
        );
    end component sumres;

    signal botonx:bit_vector(3 downto 0) ;
    signal botony:bit_vector(3 downto 0) ;
    signal botonsub:bit:='0' ;
    signal leds:bit_vector(3 downto 0);
    signal ledcout:bit;
    signal ledv:bit;
    signal ledz:bit;
    signal ledn:bit;
 
begin 
	u0:sumres 

   port map(
          x => botonx,
	  y => botony,
	  sub => botonsub,
          s => leds,
	  cut=> ledcout,
	  n=>ledn,
	  z=>ledz,
	  v=>ledv
           );
 process
   begin
      wait for 160 ns;
      botonsub <= '1';
      wait for 160 ns;
      botonsub <= '0';		
   end process;

   process
   begin
      wait for 40 ns;
      botonx(3 downto 0) <= "0000";
      wait for 40 ns;
      botonx(3 downto 0) <= "0001";
      wait for 40 ns;
      botonx(3 downto 0) <= "1000";
      wait for 40 ns;
      botonx(3 downto 0) <= "1001";		
   end process;

 process
   begin
      wait for 20 ns;
      botony(3 downto 0) <= "0000";
      wait for 20 ns;
      botony(3 downto 0) <= "0001";	
      wait for 20 ns;
      botony(3 downto 0) <= "0010";
      wait for 20 ns;
      botony(3 downto 0) <= "0011";
      wait for 20 ns;
      botony(3 downto 0) <= "0100";
      wait for 20 ns;
      botony(3 downto 0) <= "1000";
      wait for 20 ns;
      botony(3 downto 0) <= "1001";
      wait for 20 ns;
      botony(3 downto 0) <= "1111";				
   end process;

end architecture beh;
