#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_fulladd
	
tb_fulladd:  fulladd.o tb_fulladd.o
	ghdl -e tb_fulladd
	./tb_fulladd --stop-time=100ns --vcd=tb_fulladd.vcd
	gtkwave tb_fulladd.vcd ondas.gtkw

fulladd.o:fulladd.vhdl 
	ghdl -a fulladd.vhdl

tb_fulladd.o:tb_fulladd.vhdl
	ghdl -a tb_fulladd.vhdl

clean:
	rm *.o *.vcd tb_fulladd *.cf
