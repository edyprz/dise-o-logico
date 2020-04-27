package dl_lib is

component contbcd7seg is
   port( 
	  clk:in bit;
	  st:in bit;
	  rst:in bit;
	  seal:out bit;
          sal:out  bit_vector(6 downto 0)
       );
end component contbcd7seg;

component decobcd7seg is
   port( 
	ent: in bit_vector(3 downto 0);
	seal:out bit;
	sal: out bit_vector(6 downto 0)
       );
end component decobcd7seg;

component contbcd is
   port( 
	  clk:in bit;
	  st:in bit;
	  rst:in bit;
          a:out  bit_vector(3 downto 0)
       );
end component contbcd;

end package dl_lib;
