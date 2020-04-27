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

with e select salida <= 
with entrada select salida <= "10000000" when "000" ,
			      "01000000" when "001" ,
			      "00100000" when "010" ,
			      "00010000" when "011" ,
			      "00001000" when "100" ,
			      "00000100" when "101" ,
                              "00000010" when "110" ,
			      "00000001" when "111" ,
			      "00000000" when others;
"00000000" when others;

end architecture beh;
