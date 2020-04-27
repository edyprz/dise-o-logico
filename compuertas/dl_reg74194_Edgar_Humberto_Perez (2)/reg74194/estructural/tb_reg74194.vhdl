--Edgar Humberto Perez Martinez
--Ing Electronica
 
entity tb_reg74194 is
end entity tb_reg74194;
 
architecture beh of tb_reg74194 is 
    component reg74194
    port(
          ent:  in   bit_vector(3 downto 0);
	  sel:  in   bit_vector(1 downto 0);
	  edd:  in   bit;
	  edi:  in   bit;
	  clk:  in   bit;
	  sal:  out  bit_vector(3 downto 0);
	  sdd:  out  bit;
	  sdi:  out  bit

        );
    end component reg74194;

          signal ent: bit_vector(3 downto 0):="1010";
	  signal sel: bit_vector(1 downto 0):="00";
	  signal edd: bit:='0';
	  signal edi: bit:='0';
	  signal clk: bit:='1';
	  signal sal: bit_vector(3 downto 0);
	  signal sdd: bit;
	  signal sdi: bit;

begin 
	u0:reg74194 
   port map(
          ent=>ent,
	  sel=>sel,
	  edd=>edd,
	  edi=>edi,
	  clk=>clk,
	  sal=>sal,
	  sdd=>sdd,
	  sdi=>sdi

           );
 process
   begin
      wait for 10 ns;
      clk <= not(clk);	
   end process;

   process
   begin
      wait for 25 ns;
      sel <= "11";
      wait for 20 ns;
      sel <= "00";	
      wait for 40 ns;
      sel<= "01";
      wait for 70 ns;
      sel <= "10";	
     wait for 35 ns;
      sel <= "01";
      wait for 25 ns;
      sel <= "11";		
   end process;			

   process
   begin
      wait for 70 ns;
      ent <= "1111";
   end process;			

   process
   begin
      wait for 170 ns;
      edd <= '1';
      wait for 35 ns;
      edd <= '0';		
   end process;		

   process
   begin
      wait for 150 ns;
      edi <= '1';
      wait for 35 ns;
      edi <= '0';	
   end process;			


end architecture beh;
