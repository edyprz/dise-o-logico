#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_contbcd7seg2dig
tb_contbcd7seg2dig:dl_lib.o decobcd7seg.o  contbcd.o  contbcd7seg.o contbcd7seg2dig.o tb_contbcd7seg2dig.o
	ghdl -e $@
	./$@ --stop-time=1000ns --vcd=$@.vcd
	gtkwave $@.vcd ondas.gtkw
dl_lib.o:dl_lib.vhdl
	ghdl -a $^
decobcd7seg.o:decobcd7seg.vhdl
	ghdl -a decobcd7seg.vhdl
contbcd.o:contbcd.vhdl
	ghdl -a contbcd.vhdl
contbcd7seg.o:contbcd7seg.vhdl
	ghdl -a contbcd7seg.vhdl
contbcd7seg2dig.o:contbcd7seg2dig.vhdl
	ghdl -a contbcd7seg2dig.vhdl
tb_contbcd7seg2dig.o:tb_contbcd7seg2dig.vhdl
	ghdl -a tb_contbcd7seg2dig.vhdl

clean:
	rm *.o *.vcd tb_contbcd7seg2dig *.cf
