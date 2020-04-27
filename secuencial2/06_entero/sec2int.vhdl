--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito secuencial con ffjk
use work.dl_lib.all;
entity sec2int is
   port( 
	  w:  in   bit;
	  clk:in   bit;
	  z:  out  bit
       );
end entity sec2int;

architecture beh of sec2int is
	
signal ep,es:integer range 2 downto 0;

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
		if (ep=0 and w='0') then
		es<=0;

		elsif (ep=0 and w='1') then 
		es<=1;

		elsif (ep=1 and w='0') then
		es<=0;

		elsif (ep=1 and w='1') then
		es<=2;

		elsif (ep=2 and w='0') then
		es<=0;

		elsif (ep=2 and w='1') then
		es<=2;

		end if; 
		end process;

end architecture beh;
