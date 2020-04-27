package dl_lib is

component compand2 is
   port( 
 	  x:in   bit;
	  y:in   bit;	
          f:out  bit
       );

end component compand2;


	component fulladd is
   port( 
          x:in   bit;
	  y:in   bit;
	  cin:in bit;
	  cout:out bit;
          r:out  bit
	  
       );
end component fulladd;

	component um is
   port( 
	 mi:in   bit;
	  sin:in   bit;
	  qi:in bit;
	  cin:in bit;
	  cout:out bit;
	  qs:out bit;
          mio:out  bit;
          sout:out  bit
       );
end component um;

end package dl_lib;
