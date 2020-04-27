--Torralba Becerril Jose Alejandro
--Descripcion del ttl7404.

entity ttl7404 is
end entity ttl7404;


architecture beh of ttl7404 is
   component ttl7404
	port( 
	p1:in   bit;
	p2:out  bit;

	p3:in   bit;
	p4:out  bit;
	
	p5:in   bit;
	p6:out  bit;

	p9:in   bit;
	p8:out  bit;
	
	p10:out  bit;
	p11:in   bit;
	
	p12:out  bit;
	p13:in   bit;      



	p14:in bit;
	p7:out bit
       );
end component ttl7404;

signal botonp3:bit := '0';
signal ledp4:bit;
signal botonp8:bit := '0';
signal ledp8:bit;

begin
    elttl
   --setencia concurrente
   p2 <= not p1;
   p4 <= not p3;
   p6 <= not p5;
   p8 <= not p9;
   p10 <= not p11;
   p12 <= not p13;
end architecture beh;

