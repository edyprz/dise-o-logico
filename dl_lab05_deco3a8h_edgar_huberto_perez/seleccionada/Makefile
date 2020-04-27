#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_deco3a8h
	
tb_deco3a8h:  deco3a8h.o tb_deco3a8h.o
	ghdl -e tb_deco3a8h
	./tb_deco3a8h --stop-time=400ns --vcd=tb_deco3a8h.vcd
	gtkwave tb_deco3a8h.vcd ondas.gtkw

deco3a8h.o:deco3a8h.vhdl 
	ghdl -a deco3a8h.vhdl

tb_deco3a8h.o:tb_deco3a8h.vhdl
	ghdl -a tb_deco3a8h.vhdl

clean:
	rm *.o *.vcd tb_deco3a8h *.cf
