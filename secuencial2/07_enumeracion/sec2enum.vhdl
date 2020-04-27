--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito secuencial con ffjk
use work.dl_lib.all;
entity sec2enum is
   port( 
	  w:  in   bit;
	  clk:in   bit;
	  z:  out  bit
       );
end entity sec2enum;

architecture beh of sec2enum is
type estado_t is(cero,uno,dos)	;
signal ep,es:estado_t;

begin

		process(clk)
		begin 
		if clk'event and clk='1' then 
                ep<=es;
		end if;
		end process ;

		z<=int2bit(ep);		
		
		process(ep,w)
		begin
		if (ep=cero and w='0') then
		es<=cero;

		elsif (ep=cero and w='1') then 
		es<=uno;

		elsif (ep=uno and w='0') then
		es<=cero;

		elsif (ep=uno and w='1') then
		es<=dos;

		elsif (ep=dos and w='0') then
		es<=cero;

		elsif (ep=dos and w='1') then
		es<=dos;

		end if; 
		end process;

end architecture beh;
