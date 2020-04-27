#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_compnot1
	
tb_compnot1:compnot1.o tb_compnot1.o
	ghdl -e tb_compnot1
	./tb_compnot1 --stop-time=100ns --vcd=tb_compnot1.vcd
	gtkwave tb_compnot1.vcd ondas.gtkw

compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl

tb_compnot1.o:tb_compnot1.vhdl
	ghdl -a tb_compnot1.vhdl

clean:
	rm *.o *.vcd tb_compnot1 *.cf
