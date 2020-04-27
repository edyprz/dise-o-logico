#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_decobin2hex7seg
	
tb_decobin2hex7seg:  decobin2hex7seg.o tb_decobin2hex7seg.o
	ghdl -e tb_decobin2hex7seg
	./tb_decobin2hex7seg --stop-time=600ns --vcd=tb_decobin2hex7seg.vcd
	gtkwave tb_decobin2hex7seg.vcd ondas.gtkw

decobin2hex7seg.o:decobin2hex7seg.vhdl 
	ghdl -a decobin2hex7seg.vhdl

tb_decobin2hex7seg.o:tb_decobin2hex7seg.vhdl
	ghdl -a tb_decobin2hex7seg.vhdl

clean:
	rm *.o *.vcd tb_decobin2hex7seg *.cf
