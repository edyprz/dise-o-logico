package dl_lib is

component compand4 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
	  z:in   bit;
	  w:in   bit;	
          f:out  bit
       );

end component compand4;

component compand5 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
	  z:in   bit;
	  w:in   bit;
	  r:in   bit;	
          f:out  bit
       );

end component compand5;

component compand6 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
	  z:in   bit;
	  w:in   bit;
	  r:in   bit;
	  j:in   bit;	
          f:out  bit
       );

end component compand6;


component compnot1 is
   port( 
	  x:in   bit;
          f:out  bit
       );
end component compnot1;

component compor2 is
   port( 
	  x:in   bit;
	  y:in   bit;
          f:out  bit
       );
end component compor2;

component compor3 is
   port( 
	  x:in   bit;
	  y:in   bit;
	  z:in   bit;
          f:out  bit
       );
end component compor3;


end package dl_lib;
