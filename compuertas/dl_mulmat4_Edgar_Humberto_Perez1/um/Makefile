#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_um
	
tb_um:  fulladd.o compand2.o um.o tb_um.o
	ghdl -e tb_um
	./tb_um --stop-time=400ns --vcd=tb_um.vcd
	gtkwave tb_um.vcd ondas.gtkw

fulladd.o:fulladd.vhdl
	ghdl -a fulladd.vhdl

compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl
um.o:um.vhdl 
	ghdl -a um.vhdl

tb_um.o:tb_um.vhdl
	ghdl -a tb_um.vhdl

clean:
	rm *.o *.vcd tb_um *.cf
