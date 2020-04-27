--Edgar Humberto Perez Martinez

entity regdd is
	port(  
		clk: in bit;
	         x: in bit_vector(3 downto 0);
	         y: in bit_vector(3 downto 0);
	        co: in bit;
	        dd: in bit;
	        ub: out bit;
	      ysal: out bit_vector(3 downto 0);
	       sald: out bit_vector(8 downto 0);	
	       sal: out bit_vector(8 downto 0)	
);
end entity regdd;

architecture beh of regdd is

	signal interna,internai:bit_vector(8 downto 0);
	signal c_o,d_d:bit;
	signal x_x,y_y:bit_vector(3 downto 0);
   begin
sal<=interna;
sald<=internai;
c_o<=co;
x_x<=x;
y_y<=y;


process(clk)
	begin

if clk'event and clk='1' then 

interna<=c_o & x_x & y_y;
internai<= c_o & interna(7 downto 0);
end if;

end process;
ub<=y(0);


end architecture beh;
