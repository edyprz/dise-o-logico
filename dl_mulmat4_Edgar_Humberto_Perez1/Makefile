#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux
all:tb_mulmat4
tb_mulmat4: compand2.o fulladd.o  um.o mulmat4.o tb_mulmat4.o
	ghdl -e tb_mulmat4
	./tb_mulmat4 --stop-time=400ns --vcd=tb_mulmat4.vcd
	gtkwave tb_mulmat4.vcd ondas.gtkw
compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl
fulladd.o:fulladd.vhdl
	ghdl -a fulladd.vhdl
um.o:um.vhdl 
	ghdl -a um.vhdl
mulmat4.o:mulmat4.vhdl 
	ghdl -a mulmat4.vhdl
tb_mulmat4.o:tb_mulmat4.vhdl
	ghdl -a tb_mulmat4.vhdl
clean:
	rm *.o *.vcd tb_mulmat4 *.cf
