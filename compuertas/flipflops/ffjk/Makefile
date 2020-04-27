#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_ffjk 
tb_ffjk:    ffjk.o  tb_ffjk.o
	ghdl -e tb_ffjk
	./tb_ffjk --stop-time=200ns --vcd=tb_ffjk.vcd
	gtkwave tb_ffjk.vcd ondas.gtkw

ffjk.o:ffjk.vhdl 
	ghdl -a ffjk.vhdl
tb_ffjk.o:tb_ffjk.vhdl
	ghdl -a tb_ffjk.vhdl


clean:
	rm *.o *.vcd tb_ffjk *.cf
