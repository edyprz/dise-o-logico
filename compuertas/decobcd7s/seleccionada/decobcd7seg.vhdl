--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd de 7 segmentos  
entity decobcd7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobcd7seg;

architecture beh of decobcd7seg is
begin

  with ent select sal <= "1111110" when "0000" ,
			      "0110000" when "0001" ,
			      "1101101" when "0010" ,
			      "1111001" when "0011" ,
			      "0110011" when "0100" ,
			      "1011011" when "0101" ,
                              "1011111" when "0110" ,
			      "1110000" when "0111" ,
			      "1111111" when "1000" ,
			      "1111011" when "1001" ,
			      "1001111" when others ;


end architecture beh;
				
