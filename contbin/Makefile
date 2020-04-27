#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_contmod8
	
tb_contmod8:   contmod8.o tb_contmod8.o
	ghdl -e tb_contmod8
	./tb_contmod8 --stop-time=200ns --vcd=tb_contmod8.vcd
	gtkwave tb_contmod8.vcd ondas.gtkw

#dl_lib.o:dl_lib.vhdl
#	ghdl -a $^

contmod8.o:contmod8.vhdl 
	ghdl -a contmod8.vhdl

tb_contmod8.o:tb_contmod8.vhdl
	ghdl -a tb_contmod8.vhdl

clean:
	rm *.o *.vcd tb_contmod8 *.cf
