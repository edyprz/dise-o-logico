--Edgar Humberto Perez Martinez--Ing Electronica
--Descripcion de estimulos para decobcd7seg 
 
entity tb_decobcd7seg is
end entity tb_decobcd7seg;
 
architecture beh of tb_decobcd7seg is 
    component decobcd7seg
    port(
        ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
        );
    end component decobcd7seg;

    signal botones:bit_vector(3 downto 0) := "0000";
    signal leds:bit_vector(6 downto 0) := "0000000";
 
begin 
   u0:decobcd7seg
   port map(
          ent => botones,
	  sal => leds
           );


    process
   begin
      wait for 160 ns;
      botones(0)<= '1';
      wait for 160 ns;
      botones(0) <= '0';
   end process;

   process
   begin
      wait for 80 ns;
      botones(1)<= '1';
      wait for 80 ns;
      botones(1)<= '0';		
   end process;


   process
   begin
      wait for 40 ns;
      botones(2)<= '1';
      wait for 40 ns;
      botones(2) <= '0';
   end process;


   process
   begin
      wait for 20 ns;
      botones(3)<= '1';
      wait for 20 ns;
      botones(3) <= '0';
   end process;

end architecture beh;
