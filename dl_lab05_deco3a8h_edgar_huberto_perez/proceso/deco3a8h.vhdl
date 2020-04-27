--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador de 3 a 3 con enable mediante sentencias concurrentes
entity deco3a8h is
   port( 

    entrada:in   bit_vector(2 downto 0);
    salida :out  bit_vector(7 downto 0);
	  e:in   bit
	
       );
end entity deco3a8h ;

architecture beh of deco3a8h is
begin

process(entrada,e)
begin
if e = '1' then
			 
			if entrada = "000" then
			salida <= "10000000";
			elsif entrada = "001" then 
			salida <= "01000000";
			elsif entrada = "010" then
			salida <= "00100000";
			elsif entrada ="011" then
			salida <= "00010000";
			elsif entrada = "100" then
			salida <= "00001000";
			elsif entrada = "101" then
			salida <= "00000100";
			elsif entrada = "110" then
			salida <= "00000010";
			elsif entrada = "111" then
			salida <= "00000001";
			else
			salida <= "00000000";
			end if;
else
salida <= "00000000";
end if;
end process;
end architecture beh;
