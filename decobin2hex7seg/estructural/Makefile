#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_decobin2hex7seg
	
tb_decobin2hex7seg: dl_lib.o decobin2hex7seg.o compnot1.o compand4.o compand5.o compand6.o compor2.o compor3.o tb_decobin2hex7seg.o
	ghdl -e tb_decobin2hex7seg
	./tb_decobin2hex7seg --stop-time=600ns --vcd=tb_decobin2hex7seg.vcd
	gtkwave tb_decobin2hex7seg.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a $^
decobin2hex7seg.o:decobin2hex7seg.vhdl 
	ghdl -a decobin2hex7seg.vhdl
compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl
compand4.o:compand4.vhdl
	ghdl -a compand4.vhdl
compand5.o:compand5.vhdl
	ghdl -a compand5.vhdl
compand6.o:compand6.vhdl
	ghdl -a compand6.vhdl
compor2.o:compor2.vhdl
	ghdl -a compor2.vhdl
compor3.o:compor3.vhdl
	ghdl -a compor3.vhdl
tb_decobin2hex7seg.o:tb_decobin2hex7seg.vhdl
	ghdl -a tb_decobin2hex7seg.vhdl

clean:
	rm *.o *.vcd tb_decobin2hex7seg *.cf
