package dl_lib is

component decobcd7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end component decobcd7seg;


component contbcd is
   port( 
	  clk:in bit;
          a:out  bit_vector(3 downto 0)
       );
end component contbcd;
end package dl_lib;
