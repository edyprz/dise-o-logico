--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de estimulos para el latch rs con habilitacion
 
entity tb_regdd is
end entity tb_regdd;
 
architecture beh of tb_regdd is 
    component regdd
    port(
		clk: in bit;
	         x: in bit_vector(3 downto 0);
	         y: in bit_vector(3 downto 0);
	        co: in bit;
	        dd: in bit;
	        ub: out bit;
	      ysal: out bit_vector(3 downto 0);
	       sald: out bit_vector(8 downto 0);	
	       sal: out bit_vector(8 downto 0)	
       );
    end component regdd;

    signal clk:bit:= '0' ;
    signal x:bit_vector(3 downto 0):="1010" ;
    signal y:bit_vector(3 downto 0):="1111";
    signal co:bit:='1';
    signal dd:bit:='0';
    signal ub:bit;
    signal ysal:bit_vector(3 downto 0);
    signal sal:bit_vector(8 downto 0);
    signal sald:bit_vector(8 downto 0);
 
begin 
	u0:regdd

   port map(
          clk => clk,
          x=> x,
	  y => y,
	  co => co,
	  dd => dd, 
	  ub=>ub,
	  ysal=>ysal,
	  sald=>sald,
	  sal=>sal
	 
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
      wait for 40 ns;
      dd <= not dd;			
   end process;
end architecture beh;
