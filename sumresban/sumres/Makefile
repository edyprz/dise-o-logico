#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_adder4 tb_sumres

tb_adder4:   fulladd.o adder4.o  tb_adder4.o
	ghdl -e tb_adder4
fulladd.o:fulladd.vhdl
	ghdl -a fulladd.vhdl
adder4.o:adder4.vhdl 
	ghdl -a adder4.vhdl
tb_adder4.o:tb_adder4.vhdl
	ghdl -a tb_adder4.vhdl

tb_sumres:  sumres.o comp1.o fulladd.o adder4.o compxor2.o compnor4.o tb_sumres.o
	ghdl -e tb_sumres
	./tb_sumres --stop-time=1000ns --vcd=tb_sumres.vcd
	gtkwave tb_sumres.vcd ondas.gtkw
sumres.o:sumres.vhdl
	ghdl -a sumres.vhdl
compxor2.o:compxor2.vhdl
	ghdl -a compxor2.vhdl
compnor4.o:compnor4.vhdl
	ghdl -a compnor4.vhdl


fulladd.o:fulladd.vhdl
	ghdl -a fulladd.vhdl
comp1.o:comp1.vhdl
	ghdl -a comp1.vhdl

adder4.o:adder4.vhdl 
	ghdl -a adder4.vhdl


tb_sumres.o:tb_sumres.vhdl
	ghdl -a tb_sumres.vhdl

clean:
	rm *.o *.vcd tb_adder4 *.cf
