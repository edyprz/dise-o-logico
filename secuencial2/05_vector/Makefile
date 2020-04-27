#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_sec2vec
	
tb_sec2vec: dl_lib.o  sec2vec.o tb_sec2vec.o
	ghdl -e tb_sec2vec
	./tb_sec2vec --stop-time=400ns --vcd=tb_sec2vec.vcd
	gtkwave tb_sec2vec.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl
sec2vec.o:sec2vec.vhdl 
	ghdl -a sec2vec.vhdl

tb_sec2vec.o:tb_sec2vec.vhdl
	ghdl -a tb_sec2vec.vhdl

clean:
	rm *.o *.vcd tb_sec2vec *.cf
