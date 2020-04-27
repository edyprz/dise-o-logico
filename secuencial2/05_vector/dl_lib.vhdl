package dl_lib is

function bitvect2bit(ep:bit_vector(1 downto 0)) return bit;

end package dl_lib;


package body dl_lib is
function bitvect2bit(ep:bit_vector(1 downto 0)) return bit is

begin


if ep="00" then
return '0';
elsif ep="01" then
return '0';
elsif ep="10" then
return '1';
end if;

end function bitvect2bit;
end package body dl_lib;

