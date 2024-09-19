
CXX = g++
FLAGS = -g

o = fitness.o genie.o mutate.o breed.o exprand.o crossover.o report.o

genie : $o 
	$(CXX) $(FLAGS) $o -o $@

fitness.o : generated_fitness.cc generated_constants.h genie_types.h interval.h

genie.o : genie_types.h interval.h generated_constants.h breed.h

mutate.o : genie_types.h interval.h generated_constants.h generated_mutate.cc

breed.o : genie_types.h generated_constants.h interval.h breed.h exprand.h crossover.h

crossover.o : genie_types.h generated_constants.h

report.o : report.h genie_types.h generated_constants.h

test_exprand : test_exprand.o exprand.o
	$(CXX) -g test_exprand.o exprand.o -o $@

test_exprand.cc : generated_constants.h exprand.h

%.o: %.cc
	$(CXX) -c $(FLAGS) $< -o $@

.PHONY: clean

clean:
	rm $o genie

