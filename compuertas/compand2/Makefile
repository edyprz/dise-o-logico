#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_compand2
	
tb_compand2:compand2.o tb_compand2.o
	ghdl -e tb_compand2
	./tb_compand2 --stop-time=100ns --vcd=tb_compand2.vcd
	gtkwave tb_compand2.vcd ondas.gtkw

compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl

tb_compand2.o:tb_compand2.vhdl
	ghdl -a tb_compand2.vhdl

clean:
	rm *.o *.vcd tb_compand2 *.cf
