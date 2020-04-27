#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_ffd 
tb_ffd:    ffd.o  tb_ffd.o
	ghdl -e tb_ffd
	./tb_ffd --stop-time=200ns --vcd=tb_ffd.vcd
	gtkwave tb_ffd.vcd ondas.gtkw

ffd.o:ffd.vhdl 
	ghdl -a ffd.vhdl
tb_ffd.o:tb_ffd.vhdl
	ghdl -a tb_ffd.vhdl


clean:
	rm *.o *.vcd tb_ffd *.cf
