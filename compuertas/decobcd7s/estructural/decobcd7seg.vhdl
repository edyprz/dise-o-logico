--Edgar Humberto Perez Martinez
--Ing Electronica
--Descripcion de un decodificador bcd de 7 segmentos  
entity decobcd7seg is
   port( 

	ent: in bit_vector(3 downto 0);
	sal: out bit_vector(6 downto 0)
       );
end entity decobcd7seg;

architecture beh of decobcd7seg is



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


component compor2 is
   port( 
	  x:in   bit;
	  y:in   bit;
          f:out  bit
       );
end component compor2;

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

component compand4 is
   port( 
	  x:in   bit;
	  y:in   bit;
	  z:in   bit;
	  w: in  bit;
          f:out  bit
       );
end component compand4;


signal a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26:bit;


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

u4:compand2
port map(
x=>a6,
y=>a7,
f=>a8
);

u5:compand2
port map(
x=>a2,
y=>a3,
f=>a9
);

u6:compor3
port map(
x=>a5,
y=>a8,
z=>a9,
f=>sal(6)
);

u7:compand2
port map(
x=>a5,
y=>a7,
f=>a10
);

u8:compand2
port map(
x=>a1,
y=>a3,
f=>a11
);

u9:compor4
port map(
x=>a10,
y=>a0,
z=>a2,
w=>a11,
f=>sal(5)
);

u10:compor3
port map(
x=>a6,
y=>a3,
z=>a1,
f=>sal(4)
);

u11:compand2
port map(
x=>a5,
y=>a7,
f=>a12
);

u12:compand2
port map(
x=>a2,
y=>a7,
f=>a13
);

u13:compand3
port map(
x=>a4,
y=>a5,
z=>a2,
f=>a14
);

u14:compand3
port map(
x=>a6,
y=>a1,
z=>a3,
f=>a15
);

u15:compor5
port map(
x=>a0,
y=>a12,
z=>a13,
w=>a14,
r=>a15,
f=>sal(3)
);

u16:compand2
port map(
x=>a7,
y=>a2,
f=>a16
);

u17:compand2
port map(
x=>a5,
y=>a7,
f=>a17
);

u18:compor2
port map(
x=>a16,
y=>a17,
f=>sal(2)
);

u19:compand2
port map(
x=>a1,
y=>a7,
f=>a18
);

u20:compand2
port map(
x=>a6,
y=>a1,
f=>a19
);

u21:compand2
port map(
x=>a6,
y=>a7,
f=>a20
);

u22:compor4
port map(
x=>a0,
y=>a18,
z=>a19,
w=>a20,
f=>sal(1)
);

u23:compand2
port map(
x=>a2,
y=>a7,
f=>a21
);

u24:compand2
port map(
x=>a1,
y=>a6,
f=>a22
);

u25:compand3
port map(
x=>a2,
y=>a4,
z=>a5,
f=>a23
);

u26:compor4
port map(
x=>a21,
y=>a0,
z=>a22,
w=>a23,
f=>sal(0)
);
end architecture beh;
				
