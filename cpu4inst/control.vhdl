--Edgar Humberto Perez Martinez
--Ing Electronica
--descripcion de la unidad de control para el cpu de 4 instrucciones
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control is
   port( 

	  inst:   in std_logic_vector(7 downto 0);
	   clk:   in std_logic;
	     q:   out std_logic_vector(12 downto 0);
	  busw:   out std_logic_vector(3 downto 0);
	  done:   out std_logic

       );
end entity control;

architecture beh of control is

signal inm4,ep,es:std_logic_vector(3 downto 0):="0000";
signal codop,rd,rf1,rf2:std_logic_vector(1 downto 0):="00";
begin

codop<=inst(7 downto 6);--siguiendo el acuerdo de la fig.2
rd<=inst(1 downto 0);
rf1<=inst(5 downto 4);
rf2<=inst(3 downto 2);
inm4<=inst(5 downto 2);

	secuencial:process(clk)--proceso del circuito secuencial
		begin
		if clk'event and clk = '1' then
			ep<=es;
		end if;
	end process secuencial;


	combinacional:process(ep)--proceso del circuito combinacional
		begin
		
	if ep = "0000" then --estado 0
		case codop is
		when "00"=>
		es<="0001";
		when "01"=>
		es<="0011";
		when "10"=>
		es<="0101";
		when "11"=>
		es<="1001";
		when others=>
		es<="0000";
		end case;
		done<='0';

	elsif ep = "0001" then -- estado 1
		case rd is
		when "00"=>
		q<="1000000000001";
		busw<=inm4;
		when "01"=>
		q<="0010000000001";
		busw<=inm4;
		when "10"=>
		q<="0000100000001";
		busw<=inm4;
		when "11"=>
		q<="0000001000001";
		busw<=inm4;
		when others=>
		q<="0000000000000";
		busw<=inm4;
		end case;


	elsif ep = "0010" then -- estado 2
		q<="0000000000000";
		done<='1';
		es<="0000";

	elsif ep = "0011" then -- estado 3
		if rf1 = "00" then --r0 a mover
			if rd = "01" then--posible r1
				q<="0110000000000";
			elsif rd = "10" then--posible r2
				q<="0100100000000";
			elsif rd = "11" then--posible r3
				q<="0100001000000";
			else 
				q<="0000000000000";
			end if;
		elsif rf1 = "01" then --r1 a mover
			if rd = "00" then--posible a r0
				q<="1001000000000";
			elsif rd = "10" then--posible a r2
				q<="0001100000000";
			elsif rd = "11" then--posible a r3
				q<="0001001000000";
			else 
				q<="0000000000000";
			end if;
		elsif rf1 = "10" then --r2 a mover
			if rd = "00" then--posible a r0
				q<="1000010000000";
			elsif rd = "10" then--posible a r1
				q<="0010010000000";
			elsif rd = "11" then--posible a r3
				q<="0000011000000";
			else 
				q<="0000000000000";
			end if;
		elsif rf1 = "11" then --r3 a mover
			if rd = "00" then--posible a r0
				q<="1000000100000";
			elsif rd = "10" then--posible a r1
				q<="0010000100000";
			elsif rd = "11" then--posible a r2
				q<="0000100100000";
			else 
				q<="0000000000000";
			end if;
		else 
				q<="0000000000000";
		end if;
		done<='0';
	elsif ep = "0100" then -- estado 4
		q<="0000000000000";
		done<='1';
		es<="0000";

	elsif ep = "0101" then -- estado 5
		if rf1 = "00" then --r a sumar
				q<="0100000010000";
		elsif rf1 = "01" then
				q<="0001000010000";
		elsif rf1 = "10" then
				q<="0000010010000";
		elsif rf1 = "11" then
				q<="0000000110000";
		else 
				q<="0000000000000";
		end if;

	elsif ep = "0110" then -- estado 6
		if rf1 = "00" then --r0 a sumar
			if rf2 = "01" then--posible con r1
				q<="0001000001000";
			elsif rf2 = "10" then--posible con r2
				q<="0000010001000";
			elsif rf2 = "11" then--posible con r3
				q<="0000000101000";
			else
				q<="0000000000000";
			end if;

		elsif rf1 = "01" then --r1 a sumar
			if rf2 = "00" then--posible con r|
				q<="0100000001000";
			elsif rf2 = "10" then--posible con r2
				q<="0000010001000";
			elsif rf2 = "11" then--posible con r3
				q<="0000000101000";
			else
				q<="0000000000000";
			end if;
		elsif rf1 = "10" then --r2 a sumar
			if rf2 = "00" then--posible con r0
				q<="0100000001000";
			elsif rf2 = "01" then--posible con r1
				q<="0001000001000";
			elsif rf2 = "11" then--posible con r3
				q<="0000000101000";
			else
				q<="0000000000000";
			end if;
		elsif rf1 = "11" then --r3 a sumar
			if rf2 = "00" then--posible con r0
				q<="0100000001000";
			elsif rf2 = "01" then--posible con r1
				q<="0001010001000";
			elsif rf2 = "10" then--posible con r2
				q<="0000010001000";
			else
				q<="0000000000000";
			end if;
		end if;

	elsif ep = "0111" then -- estado 7
		if rf1 = "00" then --r0
			if rf2 = "01" then--r0 +r1
				if rd = "10" then--guarda en r2
				q<="0000100000100";
				elsif rd = "11" then--guarda en r3
				q<="0000001000100";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "10" then--r0 + r2
				if rd = "01" then--guarda en r1 
				q<="0010000000100";
				elsif rd = "11" then--guarda en r3
				q<="0000001000100";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "11" then--r0 + r3
				if rd = "01" then--guarda en r1
				q<="0010000000100";
				elsif rd = "10" then--guarda en r2
				q<="0000100000100";
				else
				q<="0000000000000";
				end if;
			else
				q<="0000000000000";
			end if;

		elsif rf1 = "01" then --r1 a sumar
			if rf2 = "00" then--r1 + r0
				if rd = "10" then--guarda en r2
				q<="0000100000100";
				elsif rd = "11" then--guarda en r3
				q<="0000001000100";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "10" then--r1 + r2
				if rd = "00" then--guarda en r0
				q<="1000000000100";
				elsif rd = "11" then--guarda en r3
				q<="0000001000100";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "11" then--r1 + r3
				if rd = "00" then--guarda em r0
				q<="1000000000100";
				elsif rd = "10" then--guarda en r2
				q<="0000100000100";
				else
				q<="0000000000000";
				end if;
			else
				q<="0000000000000";
			end if;

		elsif rf1 = "10" then --r2 a sumar
			if rf2 = "01" then--r2 + r1
				if rd = "00" then--guarda en r0
				q<="1000000000100";
				elsif rd = "11" then--guarda en r3
				q<="0000001000100";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "00" then--r2 + r0
				if rd = "01" then--guarda en r1
				q<="0010000000100";
				elsif rd = "11" then--guarda en r3
				q<="0000001000100";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "11" then--r2 + r3
				if rd = "00" then--guarda en r0
				q<="1000000000100";
				elsif rd = "01" then--guarda en r1
				q<="0010000000100";
				else
				q<="0000000000000";
				end if;
			else
				q<="0000000000000";
			end if;

		elsif rf1 = "11" then --r3 a sumar
			if rf2 = "00" then--r3 + r0
				if rd = "01" then--guarda en r1
				q<="0010000000100";
				elsif rd = "10" then--guarda en r2
				q<="0000100000100";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "10" then--r3 + r2
				if rd = "00" then--guarda en r0
				q<="1000000000100";
				elsif rd = "01" then--guarda en r1
				q<="0010000000100";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "01" then--r3 + r1
				if rd = "00" then--guarda en r0
				q<="1000000000100";
				elsif rd = "10" then--guarda en r2
				q<="0000100000100";
				else
				q<="0000000000000";
				end if;
			else
				q<="0000000000000";
			end if;
		end if;--elsif de rf1
		done<='0';
	elsif ep = "1000" then -- estado 8
		q<="0000000000000";
		done<='1';
		es<="0000";

	elsif ep = "1001" then -- estado 9
		if rf1 = "00" then --r a restar
				q<="0100000010010";
		elsif rf1 = "01" then
				q<="0001000010010";
		elsif rf1 = "10" then
				q<="0000010010010";
		elsif rf1 = "11" then
				q<="0000000110010";
		else 
				q<="0000000000010";
		end if;

	elsif ep = "1010" then -- estado 10
		if rf1 = "00" then --r a restar
			if rf2 = "01" then
				q<="0001000001010";
			elsif rf2 = "10" then
				q<="0000010001010";
			elsif rf2 = "11" then
				q<="0000000101010";
			else
				q<="0000000000010";
			end if;

		elsif rf1 = "01" then --minuendo
			if rf2 = "00" then--sustraendo
				q<="0100000001010";
			elsif rf2 = "10" then
				q<="0000010001010";
			elsif rf2 = "11" then
				q<="0000000101010";
			else
				q<="0000000000010";
			end if;
		elsif rf1 = "10" then
			if rf2 = "00" then
				q<="0100000001010";
			elsif rf2 = "01" then
				q<="0001000001010";
			elsif rf2 = "11" then
				q<="0000000101010";
			else
				q<="0000000000010";
			end if;
		elsif rf1 = "11" then 
			if rf2 = "00" then
				q<="0100000001010";
			elsif rf2 = "01" then
				q<="0001010001010";
			elsif rf2 = "10" then
				q<="0000010001010";
			else
				q<="0000000000010";
			end if;
		end if;

	elsif ep = "1011" then -- estado 11
		if rf1 = "00" then 
			if rf2 = "01" then
				if rd = "10" then
				q<="0000100000110";
				elsif rd = "11" then
				q<="0000001000110";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "10" then
				if rd = "01" then
				q<="0010000000110";
				elsif rd = "11" then
				q<="0000001000110";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "11" then
				if rd = "01" then
				q<="0010000000110";
				elsif rd = "10" then
				q<="0000100000110";
				else
				q<="0000000000000";
				end if;
			else
				q<="0000000000000";
			end if;

		elsif rf1 = "01" then 
			if rf2 = "00" then
				if rd = "10" then
				q<="0000100000110";
				elsif rd = "11" then
				q<="0000001000110";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "10" then
				if rd = "00" then
				q<="1000000000110";
				elsif rd = "11" then
				q<="0000001000110";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "11" then
				if rd = "00" then
				q<="1000000000110";
				elsif rd = "10" then
				q<="0000100000110";
				else
				q<="0000000000000";
				end if;
			else
				q<="0000000000000";
			end if;

		elsif rf1 = "10" then
			if rf2 = "01" then
				if rd = "00" then
				q<="1000000000110";
				elsif rd = "11" then
				q<="0000001000110";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "00" then
				if rd = "01" then
				q<="0010000000110";
				elsif rd = "11" then
				q<="0000001000110";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "11" then
				if rd = "00" then
				q<="1000000000110";
				elsif rd = "01" then
				q<="0010000000110";
				else
				q<="0000000000000";
				end if;
			else
				q<="0000000000000";
			end if;

		elsif rf1 = "11" then 
			if rf2 = "00" then
				if rd = "01" then
				q<="0010000000110";
				elsif rd = "10" then
				q<="0000100000110";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "10" then
				if rd = "00" then
				q<="1000000000110";
				elsif rd = "01" then
				q<="0010000000110";
				else
				q<="0000000000000";
				end if;
			elsif rf2 = "01" then
				if rd = "00" then
				q<="1000000000110";
				elsif rd = "10" then
				q<="0000100000110";
				else
				q<="0000000000000";
				end if;
			else
				q<="0000000000000";
			end if;
		end if;--elsif de rf1

	elsif ep = "1100" then -- estado 12
		q<="0000000000000";
		done<='1';
		es<="0000";


	end if;			
	end process combinacional;
end architecture beh;
