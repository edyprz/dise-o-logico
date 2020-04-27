--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador de 3 a 3 con enable mediante sentencias concurrentes
entity deco3a8h is
   port( 

    entrada:in   bit_vector(2 downto 0);
    salida :out  bit_vector(7 downto 0);
	  e:in   bit
	
       );
end entity deco3a8h;

architecture beh of deco3a8h is
	signal a,b,c: bit;
begin
a<= entrada(0);
b<= entrada(1);
c<= entrada(2);



	salida(0) <= not(a) and not(b) and not(c)and e;
	salida(1) <= a      and not(b) and not(c)and e;
	salida(2) <= not(a) and    (b) and not(c)and e;
	salida(3) <=     a  and     b  and not(c)and e;
	salida(4) <= not(a) and not(b) and    c and e;
	salida(5) <= a      and not(b) and    c and e;
	salida(6) <= not(a) and     b  and    c and e;
	salida(7) <=     a  and     b  and    c and e;

end architecture beh;
