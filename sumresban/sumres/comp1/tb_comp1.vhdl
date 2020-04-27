--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para el complemento a 1
 
entity tb_comp1 is
end entity tb_comp1;
 
architecture beh of tb_comp1 is 
    component comp1
    port(
          y:in   bit_vector(3 downto 0);
	  sub:in bit;
	  yc:out   bit_vector(3 downto 0)
        );
    end component comp1;

    signal botony:bit_vector(3 downto 0) ;
    signal botonsub:bit:='0' ;
    signal ledyc:bit_vector(3 downto 0);
 
begin 
	u0:comp1 
   port map(
	  y => botony,
	  yc => ledyc,
          sub => botonsub
           );
 process
   begin
      wait for 160 ns;
      botonsub <= '1';
      wait for 160 ns;
      botonsub <= '0';		
   end process;

 process
   begin
      wait for 20 ns;
      botony(3 downto 0) <= "0000";
      wait for 20 ns;
      botony(3 downto 0) <= "0001";	
      wait for 20 ns;
      botony(3 downto 0) <= "0010";
      wait for 20 ns;
      botony(3 downto 0) <= "0011";
      wait for 20 ns;
      botony(3 downto 0) <= "0100";
      wait for 20 ns;
      botony(3 downto 0) <= "1000";
      wait for 20 ns;
      botony(3 downto 0) <= "1001";
      wait for 20 ns;
      botony(3 downto 0) <= "1111";				
   end process;

end architecture beh;
