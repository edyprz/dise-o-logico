#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_deco3a8h
	
tb_deco3a8h: dl_lib.o deco3a8h.o deco2a4h.o compnot1.o compand2.o tb_deco3a8h.o
	ghdl -e tb_deco3a8h
	./tb_deco3a8h --stop-time=600ns --vcd=tb_deco3a8h.vcd
	gtkwave tb_deco3a8h.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a $^
deco3a8h.o:deco3a8h.vhdl 
	ghdl -a deco3a8h.vhdl
deco2a4h.o:deco2a4h.vhdl 
	ghdl -a deco2a4h.vhdl
compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl
compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl
tb_deco3a8h.o:tb_deco3a8h.vhdl
	ghdl -a tb_deco3a8h.vhdl

clean:
	rm *.o *.vcd tb_deco3a8h *.cf
