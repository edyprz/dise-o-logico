--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un medio sumador
entity fulladd is
   port( 
	  x:in   bit;
	  y:in   bit;
	  cin:in bit;
	  cout:out bit;
          r:out  bit
       );
end entity fulladd;

architecture beh of fulladd is
begin
	
	r<= x xor y xor cin;
	cout<= (cin and (x xor y)) or (x and y);
   
 
end architecture beh;
