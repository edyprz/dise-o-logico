package dl_lib is
type estado_t is(cero,uno,dos)	;
function int2bit(ep:estado_t) return bit;

end package dl_lib;


package body dl_lib is

function int2bit(ep:estado_t) return bit is

begin


if ep = dos then
return '1';
elsif ep = uno then 
return '0';
elsif ep = cero then 
return '0';
end if;

end function int2bit;
end package body dl_lib;

