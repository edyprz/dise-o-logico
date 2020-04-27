#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_compxor2
	
tb_compxor2: compnot1.o compand2.o  compor2.o compxor2.o tb_compxor2.o
	ghdl -e tb_compxor2
	./tb_compxor2 --stop-time=100ns --vcd=tb_compxor2.vcd
	gtkwave tb_compxor2.vcd ondas.gtkw

compxor2.o:compxor2.vhdl 
	ghdl -a compxor2.vhdl
compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl
compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl

compor2.o:compor2.vhdl
	ghdl -a compor2.vhdl

tb_compxor2.o:tb_compxor2.vhdl
	ghdl -a tb_compxor2.vhdl

clean:
	rm *.o *.vcd tb_compxor2 *.cf
