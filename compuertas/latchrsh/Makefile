#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_flipfloprs 
tb_flipfloprs:    flipfloprs.o  tb_flipfloprs.o
	ghdl -e tb_flipfloprs
	./tb_flipfloprs --stop-time=200ns --vcd=tb_flipfloprs.vcd
	gtkwave tb_flipfloprs.vcd ondas.gtkw

flipfloprs.o:flipfloprs.vhdl 
	ghdl -a flipfloprs.vhdl
tb_flipfloprs.o:tb_flipfloprs.vhdl
	ghdl -a tb_flipfloprs.vhdl


clean:
	rm *.o *.vcd tb_flipfloprs *.cf
