#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_control
	
tb_control:    control.o tb_control.o
	ghdl -e tb_control
	./tb_control --stop-time=600ns --vcd=tb_control.vcd
	gtkwave tb_control.vcd ondas.gtkw

#dl_lib.o:dl_lib.vhdl
#	ghdl -a $^

control.o:control.vhdl 
	ghdl -a control.vhdl


tb_control.o:tb_control.vhdl
	ghdl -a tb_control.vhdl

clean:
	rm *.o *.vcd tb_control *.cf
