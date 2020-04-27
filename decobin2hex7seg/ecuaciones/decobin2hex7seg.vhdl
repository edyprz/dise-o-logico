--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador  binario a hexadecimal de 7 segmentos 
entity decobin2hex7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobin2hex7seg;

architecture beh of decobin2hex7seg is

signal x3,x2,x1,x0:bit;

begin

x0<=ent(0);
x1<=ent(1);
x2<=ent(2);
x3<=ent(3);

                             
sal(0)<=(not(x1)or x0)and(not(x3)or x2)and(not(x3) or not(x0))and(x3 or not(x2)or x1)and(x2 or not(x1));

sal(1)<=(not(x3)or not(x1))and(x1 or x0)and(not(x2)or x0)and(not(x3)or x2)and(x3 or not(x2) or x1);

sal(2)<=(not(x1)or x0)and(not(x3)or not(x2))and(x2 or x0)and(not(x3)or not(x1));

sal(3)<=(not(x3)or x1)and(not(x2) or not(x1)or x0)and(x3 or x2 or not(x1))and(x2 or x1 or x0)and(not(x2) or x1 or not(x0))and(not(x3) or x2 or not(x0));

sal(4)<=(x1 or not(x0))and(not(x3)or x2)and(x3 or not(x2))and(x3 or not(x0))and(x3 or x1);

sal(5)<=(x3 or x2)and(x2 or x0)and(not(x3) or x1 or not(x0))and(x3 or not(x1) or not(x0))and(x3 or x1 or x0);

sal(6)<=(x3 or not(x1))and(x2 or x0)and(not(x3)or x0)and(not(x2)or not(x1))and(not(x3)or x2 or x1)and(x3 or not(x2) or not(x0));

end architecture beh;
				
