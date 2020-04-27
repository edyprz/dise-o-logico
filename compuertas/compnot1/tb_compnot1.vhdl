--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para compuerta NOT
 
entity tb_compnot1 is
end entity tb_compnot1;
 
architecture beh of tb_compnot1 is 
    component compnot1
    port(
         x : in  bit;
         f : out  bit
        );
    end component compnot1;
--el cero es logico, entre comillas simples
    signal botonx:bit := '0';
    signal ledf:bit;
 
begin 
   u0:compnot1 
   port map(
          x => botonx,
          f => ledf
           );

   process
   begin
      wait for 10 ns;
      botonx <= '1';
      wait for 10 ns;
      botonx <= '0';		
   end process;

end architecture beh;
