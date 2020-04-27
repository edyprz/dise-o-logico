#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_reg74194
	
tb_reg74194:reg74194.o tb_reg74194.o
	ghdl -e tb_reg74194
	./tb_reg74194 --stop-time=400ns --vcd=tb_reg74194.vcd
	gtkwave tb_reg74194.vcd ondas.gtkw

reg74194.o:reg74194.vhdl 
	ghdl -a reg74194.vhdl

tb_reg74194.o:tb_reg74194.vhdl
	ghdl -a tb_reg74194.vhdl

clean:
	rm *.o *.vcd tb_reg74194 *.cf
