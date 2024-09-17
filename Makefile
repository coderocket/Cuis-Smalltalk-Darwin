
CXX = g++

o = fitness.o genie.o mutate.o breed.o exprand.o

genie : $o 
	$(CXX) -g $(o) -o $@

fitness.o : generated_fitness.cc generated_constants.h genie_types.h interval.h

genie.o : genie_types.h interval.h generated_constants.h breed.h

mutate.o : genie_types.h interval.h generated_constants.h generated_mutate.cc

breed.o : genie_types.h generated_constants.h interval.h breed.h exprand.h

test_exprand : test_exprand.o exprand.o
	$(CXX) -g test_exprand.o exprand.o -o $@

test_exprand.cc : generated_constants.h exprand.h

%.o: %.cc
	$(CXX) -c -g $< -o $@

.PHONY: clean

clean:
	rm $o genie

