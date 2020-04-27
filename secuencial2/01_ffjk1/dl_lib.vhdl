package dl_bib is

	component ffjk is
   port( 
          j:  in   bit;
	  k:  in   bit;
	clk:  in   bit;
	  qn: out  bit;
          q : out  bit
	  
       );
end component ffjk;



	component compand2 is
   port( 
          x:  in   bit;
	  y:  in   bit;
          f : out  bit
	  
       );
end component compand2;

component compand3 is
   port( 
          x:  in   bit;
	  y:  in   bit;
	  z:  in   bit;
          f : out  bit
	  
       );
end component compand3;

component compnot1 is
   port( 
          x:  in   bit;
          f : out  bit
	  
       );
end component compnot1;

component compxor2 is
   port( 
          x:  in   bit;
	  y:  in   bit;
          f : out  bit
	  
       );
end component compxor2;


end package dl_bib;
