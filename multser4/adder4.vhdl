--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un sumador de 4 bits 
entity adder4 is
   port( 
	  x:in   bit_vector(3 downto 0);
	  y:in   bit_vector(3 downto 0);
	 ad:in   bit;
	cin:in bit;
	cout:out bit;
          r:out  bit_vector(3 downto 0)
       );
end entity adder4;

architecture beh of adder4 is

signal c_o:bit;
	begin

	process(x,y,cin)



	variable suma:bit_vector(3 downto 0):="0000";
	variable c_i:bit;

		begin 

			c_i:=cin;
if ad = '1' then 
		for i in 0 to 3 loop
			suma(i):= x(i) xor y(i) xor c_i;
			c_o <= (x(i) and y(i)) or (x(i) and c_i) or (y(i) and c_i);
			c_i:=c_o;
		end loop;
			r<=suma;
else 
	r<="0000";
end if;
		end process;
	

end architecture beh;
