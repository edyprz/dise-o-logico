#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_cpu4inst
	
tb_cpu4inst:cpu4inst.o buffer3e.o registro.o control.o  alu.o tb_cpu4inst.o
	ghdl -e tb_cpu4inst
	./tb_cpu4inst --stop-time=600ns --vcd=tb_cpu4inst.vcd
	gtkwave tb_cpu4inst.vcd ondas.gtkw

cpu4inst.o:cpu4inst.vhdl
	ghdl -a cpu4inst.vhdl

alu.o:alu.vhdl
	ghdl -a alu.vhdl

registro.o:registro.vhdl
	ghdl -a registro.vhdl

buffer3e.o:buffer3e.vhdl
	ghdl -a buffer3e.vhdl

control.o:control.vhdl
	ghdl -a control.vhdl

tb_cpu4inst.o:tb_cpu4inst.vhdl
	ghdl -a tb_cpu4inst.vhdl

clean:
	rm *.o *.vcd tb_cpu4inst *.cf
