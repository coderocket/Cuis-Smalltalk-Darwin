
CXX = $(PLATFORM_CPLUSPLUS_COMPILER)
FLAGS = -O2

o = fitness.o genie.o mutate.o breed.o crossover.o report.o invert.o attribute_layout.o chromo.o genie_functions.o

genie : $o 
	$(CXX) $(FLAGS) $o -o $@

%.o: %.cc
	$(CXX) -c $(FLAGS) $< -o $@

.PHONY: clean depend prepare

clean:
	rm *.o genie

depend:
	makedepend *.cc -f dependencies

prepare:
	mkfifo make.fifo
	mkfifo run.fifo
	mkfifo gnuplot.fifo

include dependencies

