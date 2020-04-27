#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_sec2ffjk
	
tb_sec2ffjk: dl_lib.o ffjk.o compnot1.o compand2.o compxor2.o sec2ffjk.o tb_sec2ffjk.o
	ghdl -e tb_sec2ffjk
	./tb_sec2ffjk --stop-time=400ns --vcd=tb_sec2ffjk.vcd
	gtkwave tb_sec2ffjk.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl

ffjk.o:ffjk.vhdl
	ghdl -a ffjk.vhdl

compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl
compxor2.o:compxor2.vhdl
	ghdl -a compxor2.vhdl
compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl


sec2ffjk.o:sec2ffjk.vhdl 
	ghdl -a sec2ffjk.vhdl

tb_sec2ffjk.o:tb_sec2ffjk.vhdl
	ghdl -a tb_sec2ffjk.vhdl

clean:
	rm *.o *.vcd tb_sec2ffjk *.cf
