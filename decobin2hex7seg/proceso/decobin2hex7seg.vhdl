--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd binario a hexadecimal de 7 segmentos 
entity decobin2hex7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobin2hex7seg;

architecture beh of decobin2hex7seg is
begin

  process(ent)
	begin

	case ent is 
	when "0000" =>
	sal <= "0000001";
	when "0001" =>
	sal <= "1001111";
	when "0010" =>
	sal <= "0010010";
	when "0011" =>
	sal <= "0000110";
	when "0100" =>
	sal <= "1001100";
	when "0101" =>
	sal <= "0100100";
	when "0110" =>
	sal <= "0100000";
	when "0111" =>
	sal <= "0001111";
	when "1000" =>
	sal <= "0000000";
	when "1001" =>
	sal <= "0000100";
	when "1010" =>
	sal <= "0001000";
	when "1011" =>
	sal <= "1100000";
	when "1100" =>
	sal <= "0110001";
	when "1101" =>
	sal <= "1000010";
	when "1110" =>
	sal <= "0110000";
	when "1111" =>
	sal <= "0111000";
end case;
	end process;

end architecture beh;
				
