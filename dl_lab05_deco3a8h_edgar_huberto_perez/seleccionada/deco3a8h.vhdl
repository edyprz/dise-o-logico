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
signal vector :bit_vector(3 downto 0);	
begin

vector<=e & entrada;

with vector select salida <= "10000000" when "1000" ,
			      "01000000" when "1001" ,
			      "00100000" when "1010" ,
			      "00010000" when "1011" ,
			      "00001000" when "1100" ,
			      "00000100" when "1101" ,
                              "00000010" when "1110" ,
			      "00000001" when "1111" ,
			      "00000000" when others;

end architecture beh;
