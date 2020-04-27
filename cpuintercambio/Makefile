#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_cpuswap
	
tb_cpuswap:   cpuswap.o buffer3e.o registro.o compand2.o compor2.o compnot1.o control.o tb_cpuswap.o
	ghdl -e tb_cpuswap
	./tb_cpuswap --stop-time=600ns --vcd=tb_cpuswap.vcd
	gtkwave tb_cpuswap.vcd ondas.gtkw

#dl_lib.o:dl_lib.vhdl
#	ghdl -a $^

cpuswap.o:cpuswap.vhdl 
	ghdl -a cpuswap.vhdl

control.o:control.vhdl 
	ghdl -a control.vhdl

buffer3e.o:buffer3e.vhdl 
	ghdl -a buffer3e.vhdl

compand2.o:compand2.vhdl 
	ghdl -a compand2.vhdl

compor2.o:compor2.vhdl 
	ghdl -a compor2.vhdl

compnot1.o:compnot1.vhdl 
	ghdl -a compnot1.vhdl
tb_cpuswap.o:tb_cpuswap.vhdl
	ghdl -a tb_cpuswap.vhdl

registro.o:registro.vhdl 
	ghdl -a registro.vhdl
clean:
	rm *.o *.vcd tb_cpuswap *.cf
