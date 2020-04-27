package dl_lib is
	
	component comp1 is
   port( 
          y:in   bit_vector(3 downto 0);
	  sub:in bit;
	  yc:out   bit_vector(3 downto 0)
	  
       );
end component comp1;

component adder4 is
   port( 
          x:in   bit_vector(3 downto 0);
	  y:in   bit_vector(3 downto 0);
	  cin:in bit;
	  n3:out bit;
	  cout:out bit;
          r:out  bit_vector(3 downto 0)
	  
       );
end component adder4;

component compxor2 is
   port( 
         x:in   bit;
	  y:in   bit;	
          f:out  bit
	  
       );
end component compxor2;

component fulladd is
   port( 
          x:in   bit;
	  y:in   bit;
	  cin:in bit;
	  cout:out bit;
          r:out  bit
	  
       );
end component fulladd;

component compnor4 is
   port( 
          x:in   bit;
	  y:in   bit;
          w:in   bit;
	  z:in   bit;	
          f:out  bit
       );
end component compnor4;


end package dl_lib;


package body dl_lib is

end package body dl_lib;

