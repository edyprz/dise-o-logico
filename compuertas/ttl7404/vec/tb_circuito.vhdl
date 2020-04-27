entity tb_circuito is
end entity tb_circuito;
 
architecture beh of tb_circuito is 
    component circuito is
    port(
         x : in  bit_vector(3 downto 0) :="0000";
         f : out  bit
        );
    end component circuito;
--el cero es logico, entre comillas simples
    signal botonesx:bit_vector(3 downto 0);
    signal ledf:bit;
 
begin 
   u0:circuito
   port map(
          x => botonesx,
          f => ledf
           );
--estimulo para x(0)
   process
   begin
      wait for 80 ns;
      botonesx(0) <= '1';
      wait for 80 ns;
      botonesx(0) <= '0';		
   end process;

--estimulo para x(1)
   process
   begin
      wait for 40 ns;
      botonesx(1) <= '1';
      wait for 40 ns;
      botonesx(1) <= '0';		
   end process;

--estimulo para x(2)
   process
   begin
      wait for 20 ns;
      botonesx(2) <= '1';
      wait for 20 ns;
      botonesx(2) <= '0';		
   end process;

--estimulo para x(3)
   process
   begin
      wait for 10 ns;
      botonesx(3) <= '1';
      wait for 10 ns;
      botonesx(3) <= '0';		
   end process;

end architecture beh;
