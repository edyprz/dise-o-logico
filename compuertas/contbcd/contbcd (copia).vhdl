--Edgar Humberto Perez Martinez 
--Ingenieria Electronica
use work.dl_bib.all;
entity contbcd is
	port(
	clk: in bit;
	  a: out bit_vector(3 downto 0)
	);
end entity contbcd;

architecture beh of contbcd is
	signal estado:integer range 0 to 9:=0;
	type digitos_t is array (0 to 9) of bit_vector (3 downto 0);

	signal digito_digitos_t;
begin
	a<=deco7seg(estado);

	process(clk)
	begin
		if clk'event and clk ='1' then
			if estado = 9 then
				estado<=0;
			else
			estado<= estado + 1;
		end if;
end architecture beh;

