#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_adder4 tb_addsub4f

tb_adder4:  dl_lib.o fulladd.o adder4.o  tb_adder4.o
	ghdl -e tb_adder4
fulladd.o:fulladd.vhdl
	ghdl -a fulladd.vhdl
dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl
adder4.o:adder4.vhdl 
	ghdl -a adder4.vhdl
tb_adder4.o:tb_adder4.vhdl
	ghdl -a tb_adder4.vhdl

tb_addsub4f:  addsub4f.o comp1.o fulladd.o adder4.o compxor2.o compnor4.o tb_addsub4f.o
	ghdl -e tb_addsub4f
	./tb_addsub4f --stop-time=1000ns --vcd=tb_addsub4f.vcd
	gtkwave tb_addsub4f.vcd ondas.gtkw
addsub4f.o:addsub4f.vhdl
	ghdl -a addsub4f.vhdl
compxor2.o:compxor2.vhdl
	ghdl -a compxor2.vhdl
compnor4.o:compnor4.vhdl
	ghdl -a compnor4.vhdl

comp1.o:comp1.vhdl
	ghdl -a comp1.vhdl

tb_addsub4f.o:tb_addsub4f.vhdl
	ghdl -a tb_addsub4f.vhdl

clean:
	rm *.o *.vcd tb_adder4 tb_addsub4f *.cf
