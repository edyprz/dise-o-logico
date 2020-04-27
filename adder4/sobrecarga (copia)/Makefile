#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_adder4
	
tb_adder4: dl_lib.o  adder4.o tb_adder4.o
	ghdl -e tb_adder4
	./tb_adder4 --stop-time=200ns --vcd=tb_adder4.vcd
	gtkwave tb_adder4.vcd ondas.gtkw

dl_lib.o:dl_lib.vhdl
	ghdl -a $^

adder4.o:adder4.vhdl 
	ghdl -a adder4.vhdl

tb_adder4.o:tb_adder4.vhdl
	ghdl -a tb_adder4.vhdl

clean:
	rm *.o *.vcd tb_adder4 *.cf
