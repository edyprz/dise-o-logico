--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para circuito del lab03
 
entity tb_circuito is
end entity tb_circuito;
 
architecture beh of tb_circuito is 
    component circuito
    port(
         a : in  bit;
	 b : in  bit;
	 c : in  bit;
         f : out  bit
        );
    end component circuito;
--el cero es logico, entre comillas simples
    signal botona:bit := '0';
    signal botonb:bit := '0';
    signal botonc:bit := '0';
    signal ledf:bit;
 
begin 
   u0:circuito
   port map(
          a => botona,
	  b => botonb,
	  c => botonc,
          f => ledf
           );
--estimulo para a
   process
   begin
      wait for 80 ns;
      botona<= '1';
      wait for 80 ns;
      botona<= '0';		
   end process;

--estimulo para b
   process
   begin
      wait for 40 ns;
      botonb<= '1';
      wait for 40 ns;
      botonb <= '0';
   end process;

--estimulo para c
   process
   begin
      wait for 20 ns;
      botonc<= '1';
      wait for 20 ns;
      botonc <= '0';
   end process;

end architecture beh;
