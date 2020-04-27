#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_decobcd7seg
	
tb_decobcd7seg:  decobcd7seg.o tb_decobcd7seg.o
	ghdl -e tb_decobcd7seg
	./tb_decobcd7seg --stop-time=600ns --vcd=tb_decobcd7seg.vcd
	gtkwave tb_decobcd7seg.vcd ondas.gtkw

decobcd7seg.o:decobcd7seg.vhdl 
	ghdl -a decobcd7seg.vhdl

tb_decobcd7seg.o:tb_decobcd7seg.vhdl
	ghdl -a tb_decobcd7seg.vhdl

clean:
	rm *.o *.vcd tb_decobcd7seg *.cf
