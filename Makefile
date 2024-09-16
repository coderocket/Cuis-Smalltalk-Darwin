
CXX = g++-14

o = fitness.cc genie.cc mutate.cc

genie : $(o) 
	$(CXX) -g $(o) -o $@

fitness.cc : generated_fitness.cc generated_constants.h genie_types.h interval.h

genie.cc : genie_types.h interval.h generated_constants.h

mutate.cc : genie_types.h interval.h generated_constants.h 

%.o: %.cc
	$(CXX) -c -g $< -o $@
