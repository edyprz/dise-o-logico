#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_sec2ffrs
	
tb_sec2ffrs: dl_lib.o ffrs.o compnot1.o compand2.o compand3.o compor2.o sec2ffrs.o tb_sec2ffrs.o
	ghdl -e tb_sec2ffrs
	./tb_sec2ffrs --stop-time=400ns --vcd=tb_sec2ffrs.vcd
	gtkwave tb_sec2ffrs.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl

ffrs.o:ffrs.vhdl
	ghdl -a ffrs.vhdl

compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl

compand3.o:compand3.vhdl
	ghdl -a compand3.vhdl
compor2.o:compor2.vhdl
	ghdl -a compor2.vhdl
compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl


sec2ffrs.o:sec2ffrs.vhdl 
	ghdl -a sec2ffrs.vhdl

tb_sec2ffrs.o:tb_sec2ffrs.vhdl
	ghdl -a tb_sec2ffrs.vhdl

clean:
	rm *.o *.vcd tb_sec2ffrs *.cf
