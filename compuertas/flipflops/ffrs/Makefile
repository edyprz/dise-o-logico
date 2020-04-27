#Edgar Humberto Perez Martinez
#Archivo que describe la compilacion con GHDL
#y la visualización con GTKWave, en Linux

all:tb_fft 
tb_fft:    fft.o  tb_fft.o
	ghdl -e tb_fft
	./tb_fft --stop-time=200ns --vcd=tb_fft.vcd
	gtkwave tb_fft.vcd ondas.gtkw

fft.o:fft.vhdl 
	ghdl -a fft.vhdl
tb_fft.o:tb_fft.vhdl
	ghdl -a tb_fft.vhdl


clean:
	rm *.o *.vcd tb_fft *.cf
