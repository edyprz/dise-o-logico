entity  mux4a1  is
	port(
		s :in   bit_vector (1  downto  0);
		i0:in   bit;
		i1:in   bit;
		i2:in   bit;
		i3:in   bit;
		f :out  bit
	);
end  entity  mux4a1;

architecture  beh of  mux4a1  is
begin
	with s select
	f  <= i0 when "11",
	i1 when "01",
	i2 when "10",
	i3 when "00";
end  architecture  beh;
