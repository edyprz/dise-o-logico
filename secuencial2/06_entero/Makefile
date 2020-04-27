#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_sec2int
	
tb_sec2int: dl_lib.o  sec2int.o tb_sec2int.o
	ghdl -e tb_sec2int
	./tb_sec2int --stop-time=400ns --vcd=tb_sec2int.vcd
	gtkwave tb_sec2int.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl
sec2int.o:sec2int.vhdl 
	ghdl -a sec2int.vhdl

tb_sec2int.o:tb_sec2int.vhdl
	ghdl -a tb_sec2int.vhdl

clean:
	rm *.o *.vcd tb_sec2int *.cf
