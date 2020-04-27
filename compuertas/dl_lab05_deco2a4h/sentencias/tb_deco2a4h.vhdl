--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para deco2a4h del deco2a4
 
entity tb_deco2a4h is
end entity tb_deco2a4h;
 
architecture beh of tb_deco2a4h is 
    component deco2a4h
    port(
          a:in   bit;
	  b:in   bit;
	  e:in   bit;
	 m0:out  bit;
	 m1:out  bit;
	 m2:out  bit;
	 m3:out  bit	
        );
    end component deco2a4h;

    signal botona:bit;
    signal botonb:bit;
    signal botone:bit;
    signal ledm0:bit;
    signal ledm1:bit;
    signal ledm2:bit;
    signal ledm3:bit;
begin
 
   u0:deco2a4h
   port map(
          a => botona,
	  b => botonb,
	  e => botone,
          m0 => ledm0,
          m1 => ledm1,
          m2 => ledm2,
          m3 => ledm3
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

--estimulo para e
   process
   begin
      wait for 160 ns;
      botone<= '1';
      wait for 160 ns;
      botone<= '0';
   end process;

end architecture beh;
