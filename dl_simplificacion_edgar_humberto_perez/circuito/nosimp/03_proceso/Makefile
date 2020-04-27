#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_circuito
	
tb_circuito: circuito.o tb_circuito.o
	ghdl -e $@
	./$@ --stop-time=100ns --vcd=$@.vcd
	gtkwave $@.vcd ondas.gtkw
circuito.o:circuito.vhdl 
	ghdl -a circuito.vhdl
tb_circuito.o:tb_circuito.vhdl
	ghdl -a tb_circuito.vhdl

clean:
	rm *.o *.vcd tb_circuito *.cf
