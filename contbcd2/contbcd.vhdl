--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un contador bcd
--use work.dl_lib.all;
entity contbcd is
   port( 
	  clk:in bit;
	  rst:in bit;
	  st:in bit;
          a:out  bit_vector(3 downto 0)
       );
end entity contbcd;

architecture beh of contbcd is
signal ep,es:bit_vector(3 downto 0):="0000";
begin
--señal asincrona del start
	process(clk,st,rst)
	begin 
	if ep="0000" and st='1' then
	ep<="0001";
	elsif ep="0000" and st='0' then
	ep<="0000";
	elsif rst='1' then
	ep<="0000";
	elsif clk'event and clk ='1' then
	ep<=es;
	end if;
	end process;

	a<=ep;

	process(ep)
	begin 
	case ep is
	when "0000"=>
	es<="0001";
	when "0001"=>
	es<="0010";
	when "0010"=>
	es<="0011";
	when "0011"=>
	es<="0100";
	when "0100"=>
	es<="0101";
	when "0101"=>
	es<="0110";
	when "0110"=>
	es<="0111";
	when "0111"=>
	es<="1000";
	when "1000"=>
	es<="1001";
	when "1001"=>
	es<="0000";
	when others=>
	es<="0000";
	end case;
	end process;
	

end architecture beh;
