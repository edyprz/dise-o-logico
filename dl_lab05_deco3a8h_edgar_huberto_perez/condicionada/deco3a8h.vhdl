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
	signal entradas:bit_vector(3 downto 0);
begin
 entradas<= e & entrada;
 salida <= "10000000" when entradas = "1000" else 
	   "01000000" when entradas = "1001" else 
           "00100000" when entradas = "1010" else 
	   "00010000" when entradas = "1011" else 
	   "00001000" when entradas = "1100" else 
	   "00000100" when entradas = "1101" else 
           "00000010" when entradas = "1110" else
	   "00000001" when entradas = "1111" else 
	   "00000000" ;
           

end architecture beh;
