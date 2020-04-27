package dl_bib is

component ffd is
   port( 
	  d:in   bit;
	  clk:in bit;
	  q:out bit
       );
end component ffd;

component  mux4a1  is
	port(
		s :in   bit_vector (1  downto  0);
		i0:in   bit;
		i1:in   bit;
		i2:in   bit;
		i3:in   bit;
		f :out  bit
	);
end  component  mux4a1;

end package dl_bib;
