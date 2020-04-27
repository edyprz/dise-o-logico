--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para circuito no simplificado
 
entity tb_circuito is
end entity tb_circuito;
 
architecture beh of tb_circuito is 
    component circuito
    port(
         a : in  bit;
         b : in  bit;
         c : in  bit;
         f : out bit
        );
    end component circuito;

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
      wait for 40 ns;
      botona <= not botona ;
   end process;

--estimulo para b
   process
   begin
      wait for 20 ns;
      botonb <= not botonb;	
   end process;

--estimulo para c
   process
   begin
      wait for 10 ns;
      botonc <= not botonc;	
   end process;

end architecture beh;
