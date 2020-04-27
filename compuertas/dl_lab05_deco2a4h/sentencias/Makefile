#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_deco2a4h
	
tb_deco2a4h:  deco2a4h.o tb_deco2a4h.o
	ghdl -e tb_deco2a4h
	./tb_deco2a4h --stop-time=400ns --vcd=tb_deco2a4h.vcd
	gtkwave tb_deco2a4h.vcd ondas.gtkw

deco2a4h.o:deco2a4h.vhdl 
	ghdl -a deco2a4h.vhdl

tb_deco2a4h.o:tb_deco2a4h.vhdl
	ghdl -a tb_deco2a4h.vhdl

clean:
	rm *.o *.vcd tb_deco2a4h *.cf
