#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_contbcdffjk
tb_contbcdffjk:dl_lib.o compand2.o compand3.o ffjk.o contbcdffjk.o tb_contbcdffjk.o
	ghdl -e $@
	./$@ --stop-time=400ns --vcd=$@.vcd
	gtkwave $@.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl
compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl
compand3.o:compand3.vhdl
	ghdl -a $^
ffjk.o:ffjk.vhdl
	ghdl -a $^
contbcdffjk.o:contbcdffjk.vhdl
	ghdl -a contbcdffjk.vhdl
tb_contbcdffjk.o:tb_contbcdffjk.vhdl
	ghdl -a tb_contbcdffjk.vhdl
clean:
	rm *.o *.vcd tb_contbcdffjk *.cf
