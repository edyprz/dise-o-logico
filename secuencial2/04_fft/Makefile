#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_sec2fft
	
tb_sec2fft: dl_lib.o fft.o compnot1.o compand2.o  compor2.o sec2fft.o tb_sec2fft.o
	ghdl -e tb_sec2fft
	./tb_sec2fft --stop-time=400ns --vcd=tb_sec2fft.vcd
	gtkwave tb_sec2fft.vcd ondas.gtkw

dl_lib.o:dl_lib.vhdl
	ghdl -a dl_lib.vhdl

fft.o:fft.vhdl
	ghdl -a fft.vhdl

compand2.o:compand2.vhdl
	ghdl -a compand2.vhdl

compor2.o:compor2.vhdl
	ghdl -a compor2.vhdl

compnot1.o:compnot1.vhdl
	ghdl -a compnot1.vhdl


sec2fft.o:sec2fft.vhdl 
	ghdl -a sec2fft.vhdl

tb_sec2fft.o:tb_sec2fft.vhdl
	ghdl -a tb_sec2fft.vhdl

clean:
	rm *.o *.vcd tb_sec2fft *.cf
