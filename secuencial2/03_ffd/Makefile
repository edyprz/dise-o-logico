#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_sec2ffd
	
tb_sec2ffd: dl_lib.o ffd.o compnot1.o compand2.o compand3.o compor2.o sec2ffd.o tb_sec2ffd.o
	ghdl -e tb_sec2ffd
	./tb_sec2ffd --stop-time=400ns --vcd=tb_sec2ffd.vcd
	gtkwave tb_sec2ffd.vcd ondas.gtkw

dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl

ffd.o:ffd.vhdl
	ghdl -a ffd.vhdl

compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl

compand3.o:compand3.vhdl
	ghdl -a compand3.vhdl

compor2.o:compor2.vhdl
	ghdl -a compor2.vhdl

compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl


sec2ffd.o:sec2ffd.vhdl 
	ghdl -a sec2ffd.vhdl

tb_sec2ffd.o:tb_sec2ffd.vhdl
	ghdl -a tb_sec2ffd.vhdl

clean:
	rm *.o *.vcd tb_sec2ffd *.cf
