#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_comp1
	
tb_comp1:   comp1.o tb_comp1.o
	ghdl -e tb_comp1
	./tb_comp1 --stop-time=400ns --vcd=tb_comp1.vcd
	gtkwave tb_comp1.vcd ondas.gtkw

comp1.o:comp1.vhdl 
	ghdl -a comp1.vhdl

tb_comp1.o:tb_comp1.vhdl
	ghdl -a tb_comp1.vhdl

clean:
	rm *.o *.vcd tb_comp1 *.cf
