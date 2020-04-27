--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un contador modulo 8
--use work.dl_lib.all;
entity contmod8 is
   port( 
	  clk:in bit;
          a:out  bit_vector(2 downto 0)
       );
end entity contmod8;

architecture beh of contmod8 is
signal ep,es:bit_vector(2 downto 0);
begin

	process(clk)
	begin 
	if clk'event and clk ='1' then
	ep<=es;
	end if;
	end process;

	a<=ep;

	process(ep)
	begin 
	case ep is
	when "000"=>
	es<="001";
	when "001"=>
	es<="010";
	when "010"=>
	es<="011";
	when "011"=>
	es<="100";
	when "100"=>
	es<="101";
	when "101"=>
	es<="110";
	when "110"=>
	es<="111";
	when "111"=>
	es<="000";
	end case;
	end process;
	

end architecture beh;
