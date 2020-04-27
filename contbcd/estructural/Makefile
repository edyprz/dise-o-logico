#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_contbcd7seg
tb_contbcd7seg:dl_lib.o decobcd7seg.o contbcd.o  contbcd7seg.o tb_contbcd7seg.o
	ghdl -e $@
	./$@ --stop-time=400ns --vcd=$@.vcd
	gtkwave $@.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a $^
decobcd7seg.o:decobcd7seg.vhdl
	ghdl -a decobcd7seg.vhdl
contbcd.o:contbcd.vhdl
	ghdl -a contbcd.vhdl
contbcd7seg.o:contbcd7seg.vhdl
	ghdl -a contbcd7seg.vhdl
tb_contbcd7seg.o:tb_contbcd7seg.vhdl
	ghdl -a tb_contbcd7seg.vhdl

clean:
	rm *.o *.vcd tb_contbcd7seg *.cf
