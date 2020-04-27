--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para compuerta OR
 
entity tb_compnor4 is
end entity tb_compnor4;
 
architecture beh of tb_compnor4 is 
    component compnor4
    port(
          x:in   bit;
	  y:in   bit;
          w:in   bit;
	  z:in   bit;	
          f:out  bit
        );
    end component compnor4;
--el cero es logico, entre comillas simples
    signal botonx:bit := '0';
    signal botony:bit := '0';
    signal botonw:bit := '0';
    signal botonz:bit := '0';
    signal ledf:bit;
 
begin 
   u0:compnor4
   port map(
          x => botonx,
	  y => botony,
 	  w => botonw,
	  z => botonz,
          f => ledf
           );
--estimulo para x
   process
   begin
      wait for 80 ns;
      botonx <= '1';
      wait for 80 ns;
      botonx <= '0';		
   end process;

--estimulo para y
   process
   begin
      wait for 40 ns;
      botony <= '1';
      wait for 40 ns;
      botony <= '0';		
   end process;

--estimulo para w
   process
   begin
      wait for 20 ns;
      botonw <= '1';
      wait for 20 ns;
      botonw <= '0';		
   end process;

--estimulo para z
   process
   begin
      wait for 10 ns;
      botonz <= '1';
      wait for 10 ns;
      botonz <= '0';		
   end process;

end architecture beh;
