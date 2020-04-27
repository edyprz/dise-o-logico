--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para el latch rs con habilitacion
 
entity tb_regca is
end entity tb_regca;
 
architecture beh of tb_regca is 
    component regca
    port(
	  ent:in   bit_vector(3 downto 0);
	  sel:in   bit;
	  clk:in   bit;
          sal:out  bit_vector(3 downto 0)
       );
    end component regca;

    signal ent:bit_vector(3 downto 0):= "1010" ;
    signal sel:bit:='0' ;
    signal clk:bit:='0';
    signal sal:bit_vector(3 downto 0);
 
begin 
	u0:regca

   port map(
          ent => ent,
          sel=> sel,
	  clk => clk,
	  sal=> sal 
	 
           );

   process
   begin
      wait for 10 ns;
      clk <= '0' ;
      wait for 10 ns;
      clk <= '1';		
   end process;

 process
   begin
      wait for 20 ns;
      sel <= '0';
      wait for 20 ns;
      sel <= '1';				
   end process;


end architecture beh;
