
CXX = g++

o = fitness.o genie.o mutate.o

genie : $o 
	$(CXX) -g $(o) -o $@

fitness.o : generated_fitness.cc generated_constants.h genie_types.h interval.h

genie.o : genie_types.h interval.h generated_constants.h

mutate.o : genie_types.h interval.h generated_constants.h generated_mutate.cc


%.o: %.cc
	$(CXX) -c -g $< -o $@

.PHONY: clean

clean:
	rm $o genie

