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
   process(ent)
	begin
case ent is 
	when "0000" =>
	sal <= "1111110";
	when "0001" =>
	sal <= "0110000";
	when "0010" =>
	sal <= "1101101";
	when "0011" =>
	sal <= "1111001";
	when "0100" =>
	sal <= "0110011";
	when "0101" =>
	sal <= "1011011";
	when "0110" =>
	sal <= "1011111";
	when "0111" =>
	sal <= "1110000";
	when "1000" =>
	sal <= "1111111";
	when "1001" =>
	sal <= "1111011";
	when others =>
	sal <= "1001111";
end case;
	end process;
end architecture beh;
				
