all:
	verilator --main --timing --cc --exe half_adder_tb.v half_adder.v 
	make -C obj_dir/ -f Vhalf_adder_tb.mk CXX=g++-10 CC=gcc-10

clean:
	rm -r obj_dir/
