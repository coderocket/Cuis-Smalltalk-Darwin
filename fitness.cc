#include <climits>
#include <cassert>
#include <array>
#include <stdexcept>
#include <sstream>
#include <algorithm>
#include <map>
#include <set>
#include <vector>
#include <sstream>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"
#include "fitness_library.h"
#include "chromo.h"

using namespace std;

#include "generated_functions.h"
#include "fitness_library.cc"

void calculate_num_offspring(chromosome_t* b, chromosome_t* e) {

extern int total_fitness;

	while(b != e) {
		b->num_offspring = (((double)b->fitness)/total_fitness)*POPULATION_SIZE;
		++b;
	}
}

void calculate_fitness(chromosome_t* b, chromosome_t* e) {

extern int total_fitness;

	total_fitness = 0;

	instance_t an_instance[GENIE_N_INSTANCES];

	while(b != e) {

		chromosome_to_instance(b, an_instance);	
		compute_instance_keys(an_instance);

		b->fitness = 0;

#include "generated_fitness.cc"

		total_fitness += b->fitness;

		++b;
	}

	if (total_fitness <= 0) throw runtime_error("fitness too law, aborting.");

}

