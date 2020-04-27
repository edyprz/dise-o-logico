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

signal a:bit_vector(49 downto 1);
signal b:bit;
begin 

b<='0';

u0:um
		port map(
			mi=>m(0),
		        sin=>b,
	                qi=>q(0),
	  		cin=>b,
	  		qs=>a(1),
			cout=>a(2),
          		mio=>a(3),
          		sout=>r(0)
		);


u1:um
		port map(
			mi=>m(1),
		        sin=>b,
	                qi=>a(1),
	  		cin=>a(2),
	  		qs=>a(3),
			cout=>a(4),
          		mio=>a(5),
          		sout=>a(6)
		);

u2:um
		port map(
			mi=>m(2),
		        sin=>b,
	                qi=>a(3),
	  		cin=>a(4),
	  		qs=>a(7),
			cout=>a(8),
          		mio=>a(9),
          		sout=>a(10)
		);


u3:um
		port map(
			mi=>m(3),
		        sin=>b,
	                qi=>a(7),
	  		cin=>a(8),
			qs=>b,
			cout=>a(11),
          		mio=>a(12),
          		sout=>a(13)
		);

u4:um
		port map(
			mi=>a(3),
		        sin=>a(6),
	                qi=>q(1),
	  		cin=>b,
	  		qs=>a(14),
			cout=>a(15),
          		mio=>a(16),
          		sout=>r(1)
		);

u5:um
		port map(
			mi=>a(5),
		        sin=>a(10),
	                qi=>a(14),
	  		cin=>a(15),
	  		qs=>a(17),
			cout=>a(18),
          		mio=>a(19),
          		sout=>a(20)
		);

u6:um
		port map(
			mi=>a(9),
		        sin=>a(13),
	                qi=>a(17),
	  		cin=>a(18),
	  		qs=>a(21),
			cout=>a(22),
          		mio=>a(23),
          		sout=>a(24)
		);

u7:um
		port map(
			mi=>a(12),
		        sin=>a(11),
	                qi=>a(21),
	  		cin=>a(22),
			qs=>b,
			cout=>a(25),
          		mio=>a(26),
          		sout=>a(27)
		);

u8:um
		port map(
			mi=>a(16),
		        sin=>a(20),
	                qi=>q(2),
	  		cin=>b,
	  		qs=>a(28),
			cout=>a(29),
          		mio=>a(30),
          		sout=>r(2)
		);
u9:um
		port map(
			mi=>a(19),
		        sin=>a(24),
	                qi=>a(28),
	  		cin=>a(29),
	  		qs=>a(31),
			cout=>a(32),
          		mio=>a(33),
          		sout=>a(34)
		);

u10:um
		port map(
			mi=>a(23),
		        sin=>a(27),
	                qi=>a(31),
	  		cin=>a(32),
	  		qs=>a(35),
			cout=>a(36),
          		mio=>a(37),
          		sout=>a(38)
		);

u11:um
		port map(
			mi=>a(26),
		        sin=>a(25),
	                qi=>a(35),
	  		cin=>a(36),
			qs=>b,
			cout=>a(39),
          		mio=>a(40),
          		sout=>a(41)
		);

u12:um
		port map(
			mi=>a(30),
		        sin=>a(34),
	                qi=>q(3),
	  		cin=>b,
	  		qs=>a(42),
			cout=>a(43),
			mio=>b,
          		sout=>r(3)
		);
u13:um
		port map(
			mi=>a(33),
		        sin=>a(38),
	                qi=>a(42),
	  		cin=>a(43),
	  		qs=>a(46),
			cout=>a(47),
			mio=>b,
          		sout=>r(4)
		);

u14:um
		port map(
			mi=>a(37),
		        sin=>a(41),
	                qi=>a(46),
	  		cin=>a(47),
	  		qs=>a(48),
			cout=>a(49),
			mio=>b,
          		sout=>r(5)
		);

u15:um
		port map(
			mi=>a(40),
		        sin=>a(39),
	                qi=>a(48),
	  		cin=>a(49),
			qs=>b,
			mio=>b,
			cout=>b,
          		sout=>r(6)
		);

end architecture beh;

