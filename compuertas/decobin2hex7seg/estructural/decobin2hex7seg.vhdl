--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd de 7 segmentos  
entity decobin2hex7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobin2hex7seg;

architecture beh of decobin2hex7seg is



component compnot1 is
   port( 

	  x:in   bit;
          f:out  bit
       );
end component compnot1;

component compand2 is
   port( 

	  x:in   bit;
          y:in   bit;
          f:out  bit
       );
end component compand2;

component compand3 is
   port( 

	  x:in   bit;
          y:in   bit;
	  z:in   bit;
          f:out  bit
       );
end component compand3;

component compand4 is
   port( 

	  x:in   bit;
          y:in   bit;
	  z:in   bit;
	  w:in   bit;
          f:out  bit
       );
end component compand4;


component compor3 is
   port( 
	  x:in   bit;
	  y:in   bit;
	  z:in   bit;
          f:out  bit
       );
end component compor3;

component compor4 is
   port( 
	  x:in   bit;
	  y:in   bit;
	  z:in   bit;
	  w:in   bit;
          f:out  bit
       );
end component compor4;



signal a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32,a33,a34:bit;


begin
a0<=ent(3);
a1<=ent(2);
a2<=ent(1);
a3<=ent(0);

u0:compnot1
port map(
x=>a0,
f=>a4
);

u1:compnot1
port map(
x=>a1,
f=>a5
); 

u2:compnot1
port map(
x=>a2,
f=>a6
);

u3:compnot1
port map(
x=>a3,
f=>a7
);

u4:compand3
port map(
x=>a1,
y=>a2,
z=>a3,
f=>a8
);

u5:compand3
port map(
x=>a1,
y=>a3,
z=>a0,
f=>a9
);

u6:compand4
port map(
x=>a1,
y=>a4,
z=>a6,
w=>a7,
f=>a10
);

u7:compand4
port map(
x=>a4,
y=>a5,
z=>a6,
w=>a3,
f=>a11
);

u8:compor4
port map(
x=>a8,
y=>a9,
z=>a10,
w=>a11,
f=>sal(6)
);

u9:compand3
port map(
x=>a0,
y=>a2,
z=>a3,
f=>a12
);

u10:compand3
port map(
x=>a1,
y=>a2,
z=>a7,
f=>a13
);

u11:compand4
port map(
x=>a3,
y=>a1,
z=>a6,
w=>a4,
f=>a14
);

u12:compand3
port map(
x=>a7,
y=>a0,
z=>a1,
f=>a15
);

u13:compor4
port map(
x=>a12,
y=>a13,
z=>a14,
w=>a15,
f=>sal(5)
);

u14:compand3
port map(
x=>a2,
y=>a1,
z=>a0,
f=>a16
);

u15:compand3
port map(
x=>a7,
y=>a5,
z=>a4,
f=>a17
);

u16:compand3
port map(
x=>a7,
y=>a1,
z=>a0,
f=>a18
);

u17:compor3
port map(
x=>a16,
y=>a17,
z=>a18,
f=>sal(4)
);

u18:compand3
port map(
x=>a5,
y=>a6,
z=>a3,
f=>a19
);

u19:compand4
port map(
x=>a0,
y=>a2,
z=>a7,
w=>a5,
f=>a20
);

u20:compand4
port map(
x=>a4,
y=>a1,
z=>a2,
w=>a3,
f=>a21
);

u21:compand4
port map(
x=>a4,
y=>a6,
z=>a7,
w=>a1,
f=>a22
);

u22:compand2
port map(
x=>a4,
y=>a3,
f=>a23
);

u23:compor4
port map(
x=>a19,
y=>a20,
z=>a21,
w=>a22,
f=>sal(3)
);

u24:compand3
port map(
x=>a3,
y=>a6,
z=>a5,
f=>a24
);

u25:compand3
port map(
x=>a1,
y=>a6,
z=>a4,
f=>a25
);

u26:compor3
port map(
x=>a23,
y=>a24,
z=>a25,
f=>sal(2)
);

u27:compand3
port map(
x=>a2,
y=>a3,
z=>a4,
f=>a26
);

u28:compand3
port map(
x=>a4,
y=>a5,
z=>a2,
f=>a27
);

u29:compand3
port map(
x=>a3,
y=>a5,
z=>a4,
f=>a28
);

u30:compand4
port map(
x=>a0,
y=>a1,
z=>a3,
w=>a6,
f=>a29
);

u31:compor4
port map(
x=>a26,
y=>a27,
z=>a28,
w=>a29,
f=>sal(1)
);

u32:compand3
port map(
x=>a4,
y=>a5,
z=>a6,
f=>a30
);

u33:compand3
port map(
x=>a4,
y=>a5,
z=>a7,
f=>a31
);

u34:compand4
port map(
x=>a3,
y=>a2,
z=>a1,
w=>a4,
f=>a32
);

u35:compor3
port map(
x=>a30,
y=>a31,
z=>a32,
f=>sal(0)
);
end architecture beh;
				
