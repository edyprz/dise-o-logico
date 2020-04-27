#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_regdd 
tb_regdd:    regdd.o  tb_regdd.o
	ghdl -e tb_regdd
	./tb_regdd --stop-time=200ns --vcd=tb_regdd.vcd
	gtkwave tb_regdd.vcd ondas.gtkw

regdd.o:regdd.vhdl 
	ghdl -a regdd.vhdl
tb_regdd.o:tb_regdd.vhdl
	ghdl -a tb_regdd.vhdl


clean:
	rm *.o *.vcd tb_regdd *.cf
