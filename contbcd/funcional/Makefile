#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_contbcd
tb_contbcd:dl_lib.o  contbcd.o tb_contbcd.o
	ghdl -e $@
	./$@ --stop-time=400ns --vcd=$@.vcd
	gtkwave $@.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a $^
contbcd.o:contbcd.vhdl
	ghdl -a contbcd.vhdl
tb_contbcd.o:tb_contbcd.vhdl
	ghdl -a tb_contbcd.vhdl

clean:
	rm *.o *.vcd tb_contbcd *.cf
