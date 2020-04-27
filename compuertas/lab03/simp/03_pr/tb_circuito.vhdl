--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para circuito del lab03
 
entity tb_circuito is
end entity tb_circuito;
 
architecture beh of tb_circuito is 
    component circuito
    port(
         x1 : in  bit;
	 x2 : in  bit;
         f : out  bit
        );
    end component circuito;
--el cero es logico, entre comillas simples
    signal botonx1:bit := '0';
    signal botonx2:bit := '0';
    signal ledf:bit;
 
begin 
   u0:circuito
   port map(
          x1 => botonx1,
	  x2 => botonx2,
          f => ledf
           );
--estimulo para x1
   process
   begin
      wait for 40 ns;
      botonx1<= '1';
      wait for 40 ns;
      botonx1<= '0';		
   end process;

--estimulo para x2
   process
   begin
      wait for 20 ns;
      botonx2<= '1';
      wait for 20 ns;
      botonx2 <= '0';
   end process;
end architecture beh;
