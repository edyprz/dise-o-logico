--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un sumador de 4 bits 
entity control is
   port( 
	   st:  in   bit;
	  clk:  in   bit;
	  add:  out  bit;
	 load:  out  bit;
           sr:  out  bit;
	 done:  out
       );
end entity control;

architecture beh of control is
	begin
	process(clk)--secuencial
		begin 
			if clk'event and clk='1' then 
			ep<=es;
			end if;
		end if;
	end process;

	process(ep)--combinacional
		begin 
		case ep is
			when "00"=>es<="01";st<='1';
			when "01"=>es<="10";load<='1';
			when "10"=>es<="11";st<='1';

	end process;
end architecture beh;
