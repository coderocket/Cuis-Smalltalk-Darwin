
CXX = $(PLATFORM_CPLUSPLUS_COMPILER)
FLAGS =  -g

o = fitness.o genie.o mutate.o breed.o crossover.o report.o invert.o attribute_layout.o chromo.o genie_functions.o

genie : $o 
	$(CXX) $(FLAGS) $o -o $@

fitness.o : generated_fitness.cc genie_constants.h genie_types.h interval.h chromo.h

genie.o : genie_types.h interval.h genie_constants.h breed.h invert.h

mutate.o : genie_types.h interval.h genie_constants.h chromo.h

breed.o : genie_types.h genie_constants.h interval.h breed.h exprand.h crossover.h

invert.o : genie_types.h genie_constants.h 

attribute_layout.o : generated_attribute_layout.h interval.h

genie_functions.o : generated_functions.cc genie_types.h genie_constants.h interval.h

genie_constants.h : generated_constants.h
	touch genie_constants.h

crossover.o : genie_types.h genie_constants.h

chromo.o : chromo.h

report.o : report.h genie_types.h genie_constants.h

test_exprand : test_exprand.o exprand.o
	$(CXX) -g test_exprand.o exprand.o -o $@

test_exprand.cc : genie_constants.h exprand.h

%.o: %.cc
	$(CXX) -c $(FLAGS) $< -o $@

.PHONY: clean

clean:
	rm *.o genie

