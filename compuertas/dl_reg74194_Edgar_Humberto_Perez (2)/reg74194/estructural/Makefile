#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_reg74194
	
tb_reg74194: dl_lib.o ffd.o mux4a1.o reg74194.o tb_reg74194.o
	ghdl -e tb_reg74194
	./tb_reg74194 --stop-time=400ns --vcd=tb_reg74194.vcd
	gtkwave tb_reg74194.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl

ffd.o:ffd.vhdl
	ghdl -a ffd.vhdl

mux4a1.o:mux4a1.vhdl
	ghdl -a mux4a1.vhdl

reg74194.o:reg74194.vhdl 
	ghdl -a reg74194.vhdl

tb_reg74194.o:tb_reg74194.vhdl
	ghdl -a tb_reg74194.vhdl

clean:
	rm *.o *.vcd tb_reg74194 *.cf
