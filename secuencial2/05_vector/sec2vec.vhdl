--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un circuito secuencial con ffjk
use work.dl_lib.all;
entity sec2vec is
   port( 
	  w:  in   bit;
	  clk:in   bit;
	  z:  out  bit
       );
end entity sec2vec;

architecture beh of sec2vec is
	
signal ep,es:bit_vector(1 downto 0):="00";

begin

		process(clk)
		begin 
		if clk'event and clk='1' then 
                ep<=es;
		end if;
		end process ;

		z<=bitvect2bit(ep);		
		
		process(ep,w)
		begin
		if (ep="00" and w='0') then
		es<="00";

		elsif (ep="00" and w='1') then 
		es<="01";

		elsif (ep="01" and w='0') then
		es<="00";

		elsif (ep="01" and w='1') then
		es<="10";

		elsif (ep="10" and w='0') then
		es<="00";

		elsif (ep="10" and w='1') then
		es<="10";

		end if; 
		end process;

end architecture beh;
