package dl_lib is

component compand2 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );

end component compand2;


component compnot1 is
   port( 
	  x:in   bit;
          f:out  bit
       );
end component compnot1;

component deco2a4h is
   port( 

	  a:in   bit;
	  b:in   bit;
	  e:in   bit;
	 m0:out  bit;
	 m1:out  bit;
	 m2:out  bit;
	 m3:out  bit	
       );
end component deco2a4h ;
end package dl_lib;
