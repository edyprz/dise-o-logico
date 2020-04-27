#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_sec2enum
	
tb_sec2enum: dl_lib.o  sec2enum.o tb_sec2enum.o
	ghdl -e tb_sec2enum
	./tb_sec2enum --stop-time=400ns --vcd=tb_sec2enum.vcd
	gtkwave tb_sec2enum.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl
sec2enum.o:sec2enum.vhdl 
	ghdl -a sec2enum.vhdl

tb_sec2enum.o:tb_sec2enum.vhdl
	ghdl -a tb_sec2enum.vhdl

clean:
	rm *.o *.vcd tb_sec2enum *.cf
