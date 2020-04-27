#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_compnor4
	
tb_compnor4:compnor4.o tb_compnor4.o
	ghdl -e tb_compnor4
	./tb_compnor4 --stop-time=200ns --vcd=tb_compnor4.vcd
	gtkwave tb_compnor4.vcd ondas.gtkw

compnor4.o:compnor4.vhdl
	ghdl -a compnor4.vhdl

tb_compnor4.o:tb_compnor4.vhdl
	ghdl -a tb_compnor4.vhdl

clean:
	rm *.o *.vcd tb_compnor4 *.cf
