package dl_bib is

component compand2 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );

end component compand2;

component compnand2 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );

end component compnand2;

component compnor2 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );

end component compnor2;


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

component compxor2 is
   port( 

	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end component compxor2;

end package dl_bib;
