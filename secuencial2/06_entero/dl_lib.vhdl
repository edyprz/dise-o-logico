package dl_lib is

function int2bit(ep:natural range 2 downto 0) return bit;

end package dl_lib;


package body dl_lib is
function int2bit(ep:natural range 2 downto 0) return bit is

begin


if ep = 2 then
return '1';
elsif ep = 1 then 
return '0';
elsif ep = 0 then 
return '0';
end if;

end function int2bit;
end package body dl_lib;

