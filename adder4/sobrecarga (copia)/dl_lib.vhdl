package dl_lib is

function "+"(a,b:bit_vector(3 downto 0);cin:bit) return bit_vector;

end package dl_lib;


package body dl_lib is
function "+"(ent:bit_vector(3 downto 0);cin:bit) return bit_vector is
variable ci,co:bit;
variable suma:bit_vector(3 downto 0):="0000";

begin
	ci:=cin;
		for i in 0 to 3 loop
			suma(i):=a(i) xor b(i) xor ci;
			co:=(a(i) and b(i))or(a(i) and ci) or (b(i) and ci);
			ci:=co;
		end loop;
	return suma;

end function "+";
end package body dl_lib;

