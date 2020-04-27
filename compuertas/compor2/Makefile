#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_compor2
	
tb_compor2:compor2.o tb_compor2.o
	ghdl -e tb_compor2
	./tb_compor2 --stop-time=100ns --vcd=tb_compor2.vcd
	gtkwave tb_compor2.vcd ondas.gtkw

compor2.o:compor2.vhdl
	ghdl -a compor2.vhdl

tb_compor2.o:tb_compor2.vhdl
	ghdl -a tb_compor2.vhdl

clean:
	rm *.o *.vcd tb_compor2 *.cf
