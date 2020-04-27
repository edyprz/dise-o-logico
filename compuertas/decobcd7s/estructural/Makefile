#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_decobin2hex7seg
	
tb_decobin2hex7seg:  decobin2hex7seg.o tb_decobin2hex7seg.o compnot1.o compand2.o compand3.o compor2.o compor3.o compor4.o compand4.o
	ghdl -e tb_decobin2hex7seg
	./tb_decobin2hex7seg --stop-time=600ns --vcd=tb_decobin2hex7seg.vcd
	gtkwave tb_decobin2hex7seg.vcd ondas.gtkw

decobin2hex7seg.o:decobin2hex7seg.vhdl 
	ghdl -a decobin2hex7seg.vhdl
compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl
compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl
compand3.o:compand3.vhdl
	ghdl -a compand3.vhdl
compand4.o:compand4.vhdl
	ghdl -a compand4.vhdl

compor2.o:compor2.vhdl
	ghdl -a compor2.vhdl
compor3.o:compor3.vhdl
	ghdl -a compor3.vhdl
compor4.o:compor4.vhdl
	ghdl -a compor4.vhdl
compor5.o:compor5.vhdl
	ghdl -a compor5.vhdl




tb_decobin2hex7seg.o:tb_decobin2hex7seg.vhdl
	ghdl -a tb_decobin2hex7seg.vhdl

clean:
	rm *.o *.vcd tb_decobin2hex7seg *.cf
