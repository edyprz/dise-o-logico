--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para compuerta AND
 
entity tb_compand2 is
end entity tb_compand2;
 
architecture beh of tb_compand2 is 
    component compand2
    port(
         x : in  bit;
	 y : in  bit;
         f : out  bit
        );
    end component compand2;
--el cero es logico, entre comillas simples
    signal botonx:bit := '0';
    signal botony:bit := '0';
    signal ledf:bit;
 
begin 
   u0:compand2 
   port map(
          x => botonx,
	  y => botony,
          f => ledf
           );
--estimulo para x
   process
   begin
      wait for 40 ns;
      botonx <= '1';
      wait for 40 ns;
      botonx <= '0';		
   end process;

--estimulo para y
   process
   begin
      wait for 20 ns;
      botony <= '1';
      wait for 20 ns;
      botony <= '0';		
   end process;
end architecture beh;
