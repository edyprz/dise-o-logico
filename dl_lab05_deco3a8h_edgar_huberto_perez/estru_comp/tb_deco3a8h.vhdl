--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para deco3a8h del deco2a4
 
entity tb_deco3a8h is
end entity tb_deco3a8h;
 
architecture beh of tb_deco3a8h is 
    component deco3a8h
    port(
           entrada:in   bit_vector(2 downto 0);
           salida :out  bit_vector(7 downto 0);
	         e:in   bit	
        );
    end component deco3a8h;

    signal botones:  bit_vector(2 downto 0);
    signal leds  :   bit_vector(7 downto 0);
    signal botone:bit;
begin
 
   u0:deco3a8h
   port map(
          entrada => botones,
	  e => botone,
          salida => leds
           );
--estimulo para a
   process
   begin
      wait for 80 ns;
      botones(0)<= '1';
      wait for 80 ns;
      botones(0)<= '0';		
   end process;

--estimulo para b
   process
   begin
      wait for 40 ns;
      botones(1)<= '1';
      wait for 40 ns;
      botones(1) <= '0';
   end process;

--estimulo para c
   process
   begin
      wait for 20 ns;
      botones(2)<= '1';
      wait for 20 ns;
      botones(2) <= '0';
   end process;

--estimulo para e
   process
   begin
      wait for 160 ns;
      botone<= '1';
      wait for 160 ns;
      botone<= '0';
   end process;

end architecture beh;
