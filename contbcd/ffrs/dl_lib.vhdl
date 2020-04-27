package dl_lib is

component compand3 is
   port( 
	  x:in   bit;
	  y:in   bit;	
	  z:in   bit;
          f:out  bit
       );
end component compand3;

component compand2 is
   port( 
	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );
end component compand2;

component ffrs is
   port( 
	  s:in   bit;
	  r:in   bit;
	  clk:in bit;
	  qn:out bit;
          q:out  bit
       );
end component ffrs;


end package dl_lib;
