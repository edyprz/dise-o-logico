#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_contbcdffrs
tb_contbcdffrs:dl_lib.o compand2.o compand3.o ffrs.o contbcdffrs.o tb_contbcdffrs.o
	ghdl -e $@
	./$@ --stop-time=400ns --vcd=$@.vcd
	gtkwave $@.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl
compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl
compand3.o:compand3.vhdl
	ghdl -a $^
ffrs.o:ffrs.vhdl
	ghdl -a $^
contbcdffrs.o:contbcdffrs.vhdl
	ghdl -a contbcdffrs.vhdl
tb_contbcdffrs.o:tb_contbcdffrs.vhdl
	ghdl -a tb_contbcdffrs.vhdl
clean:
	rm *.o *.vcd tb_contbcdffrs *.cf
