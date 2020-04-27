--Edgar Hmulmat4berto Perez Martinez
--Ing Electronica
--Descripcion de la unidad multiplicadora
entity mulmat4 is
   port( 
	  m:in   bit_vector(3 downto 0);
	  q:in bit_vector(3 downto 0);
	  r:out bit_vector(6 downto 0)
       );
end entity mulmat4;

architecture beh of mulmat4 is


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

signal a:bit_vector(55 downto 0);

begin 



u0:um
		port map(
			mi=>m(0),
		        sin=>'0',
	                qi=>q(0),
	  		cin=>'0',
	  		cout=>a(0),
	  		qs=>a(1),
          		mio=>a(2),
          		sout=>r(0)
		);

u1:um
		port map(
			mi=>m(1),
		        sin=>'0',
	                qi=>a(1),
	  		cin=>a(0),
	  		cout=>a(3),
	  		qs=>a(4),
          		mio=>a(5),
          		sout=>a(6)
		);

u2:um
		port map(
			mi=>m(2),
		        sin=>'0',
	                qi=>a(4),
	  		cin=>a(3),
	  		cout=>a(7),
	  		qs=>a(8),
          		mio=>a(10),
          		sout=>a(9)
		);

u3:um
		port map(
			mi=>m(3),
		        sin=>'0',
	                qi=>a(8),
	  		cin=>a(7),
	  		cout=>a(11),
          		mio=>a(13),
          		sout=>a(12)
		);

u4:um
		port map(
			mi=>a(2),
		        sin=>a(6),
	                qi=>q(1),
	  		cin=>'0',
	  		cout=>a(14),
	  		qs=>a(15),
          		mio=>a(16),
          		sout=>r(1)
		);

u5:um
		port map(
			mi=>a(5),
		        sin=>a(9),
	                qi=>a(15),
	  		cin=>a(14),
	  		cout=>a(18),
	  		qs=>a(19),
          		mio=>a(20),
          		sout=>a(21)
		);

 
u6:um
		port map(
			mi=>a(10),
		        sin=>a(12),
	                qi=>a(19),
	  		cin=>a(18),
	  		cout=>a(22),
	  		qs=>a(23),
          		mio=>a(24),
          		sout=>a(25)
		);

u7:um
		port map(
			mi=>a(13),
		        sin=>a(11),
	                qi=>a(23),
	  		cin=>a(22),
	  		cout=>a(26),
          		mio=>a(27),
          		sout=>a(28)
		);

u8:um
		port map(
			mi=>a(16),
		        sin=>a(21),
	                qi=>q(2),
	  		cin=>'0',
	  		cout=>a(29),
	  		qs=>a(30),
          		mio=>a(31),
          		sout=>r(2)
		);

u9:um
		port map(
			mi=>a(20),
		        sin=>a(25),
	                qi=>a(30),
	  		cin=>a(29),
	  		cout=>a(33),
	  		qs=>a(34),
          		mio=>a(35),
          		sout=>a(36)
		);

u10:um
		port map(
			mi=>a(24),
		        sin=>a(28),
	                qi=>a(34),
	  		cin=>a(33),
	  		cout=>a(37),
	  		qs=>a(38),
          		mio=>a(39),
          		sout=>a(40)
		);

u11:um
		port map(
			mi=>a(27),
		        sin=>a(26),
	                qi=>a(38),
	  		cin=>a(39),
	  		cout=>a(41),
          		mio=>a(42),
          		sout=>a(43)
		);
u12:um
		port map(
			mi=>a(31),
		        sin=>a(36),
	                qi=>q(3),
	  		cin=>'0',
	  		cout=>a(44),
	  		qs=>a(45),
          		sout=>r(3)
		);

u13:um
		port map(
			mi=>a(35),
		        sin=>a(40),
	                qi=>a(45),
	  		cin=>a(44),
	  		cout=>a(48),
	  		qs=>a(49),
          		sout=>r(4)
		);

u14:um
		port map(
			mi=>a(39),
		        sin=>a(43),
	                qi=>a(49),
	  		cin=>a(48),
	  		cout=>a(52),
	  		qs=>a(53),
          		sout=>r(5)
		);

u15:um
		port map(
			mi=>a(42),
		        sin=>a(41),
	                qi=>a(53),
	  		cin=>a(52),
          		sout=>r(6)
		);
end architecture beh;
