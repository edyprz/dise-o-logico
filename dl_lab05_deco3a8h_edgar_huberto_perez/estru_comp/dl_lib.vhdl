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


component compnot1 is
   port( 
	  x:in   bit;
          f:out  bit
       );
end component compnot1;


end package dl_lib;
