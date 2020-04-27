--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para un circuito secuencial con ffrs
 
entity tb_sec2ffrs is
end entity tb_sec2ffrs;
 
architecture beh of tb_sec2ffrs is 
    component sec2ffrs
    port(
                w:  in   bit;
	        clk:in   bit;
	        z:  out  bit
        );
    end component sec2ffrs;

    signal botonw:bit:='0';
    signal botonclk:bit:='0';
    signal ledz:bit;
 
begin 
	u0:sec2ffrs 
   port map(
              w => botonw,
	      clk => botonclk,
               z => ledz
           );
 process
   begin
      wait for 10 ns;
      botonclk <= '1';
      wait for 10 ns;
      botonclk <= '0';		
   end process;

   process
   begin
      wait for 25 ns;
      botonw <= '1';
      wait for 10 ns;
      botonw <= '0';	
      wait for 20 ns;
      botonw <= '1';
      wait for 40 ns;
      botonw <= '0';	
     wait for 50 ns;
      botonw <= '1';
      wait for 50 ns;
      botonw <= '0';		
   end process;			


end architecture beh;
