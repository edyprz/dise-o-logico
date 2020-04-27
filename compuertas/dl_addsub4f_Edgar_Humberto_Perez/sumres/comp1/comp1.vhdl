--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion del complemento a 1

entity comp1 is
   port( 
	  y:in   bit_vector(3 downto 0);
	  sub:in bit;
	  yc:out   bit_vector(3 downto 0)
         
       );
end entity comp1;

architecture beh of comp1 is
begin
	
	yc(3)<= y(3) xor sub;
	yc(2)<= y(2) xor sub;
	yc(1)<= y(1) xor sub;
	yc(0)<= y(0) xor sub;
	
   
 
end architecture beh;
