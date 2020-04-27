package dl_lib is

function lafuncion(ent:bit_vector(3 downto 0)) return bit_vector;

end package dl_lib;


package body dl_lib is
function lafuncion(ent:bit_vector(3 downto 0)) return bit_vector is
variable sa:bit_vector(6 downto 0):="0000000";
begin

	case ent is 
	when "0000" =>
	sa := "0000001";

	when "0001" =>
	sa := "1001111";

	when "0010" =>
	sa := "0010010";

	when "0011" =>
	sa := "0000110";

	when "0100" =>
	sa := "1001100";

	when "0101" =>
	sa := "0100100";

	when "0110" =>
	sa := "0100000";

	when "0111" =>
	sa := "0001111";

	when "1000" =>
	sa := "0000000";

	when "1001" =>
	sa := "0001100";

	when "1010" =>
	sa := "0001000";

	when "1011" =>
	sa := "1100000";

	when "1100" =>
	sa := "0110001";

	when "1101" =>
	sa := "1000010";

	when "1110" =>
	sa := "0110000";

	when "1111" =>
	sa := "1110000";

        end case;

	return sa;

end function lafuncion;
end package body dl_lib;

