#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_circuito
	
tb_circuito: compnot1.o compand2.o  compor2.o circuito.o tb_circuito.o
	ghdl -e tb_circuito
	./tb_circuito --stop-time=100ns --vcd=tb_circuito.vcd
	gtkwave tb_circuito.vcd ondas.gtkw

circuito.o:circuito.vhdl 
	ghdl -a circuito.vhdl
compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl
compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl

compor2.o:compor2.vhdl
	ghdl -a compor2.vhdl

tb_circuito.o:tb_circuito.vhdl
	ghdl -a tb_circuito.vhdl

clean:
	rm *.o *.vcd tb_circuito *.cf
