#include <climits>
#include <cassert>
#include <array>
#include <stdexcept>
#include <sstream>
#include <algorithm>
#include <numeric>
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

	for_each(b, e, [](chromosome_t& cc) {
		cc.num_offspring = (((double)cc.fitness)/total_fitness)*POPULATION_SIZE;
	});
}

int fitness_array[POPULATION_SIZE + POPULATION_SIZE/4];

void calculate_fitness(chromosome_t* b, chromosome_t* e) {

extern int total_fitness;

	total_fitness = 0;

	for_each(b, e, [](chromosome_t& cc) {

		instance_t an_instance[GENIE_N_INSTANCES];

		chromosome_t* b = &cc;

		chromosome_to_instance(b, an_instance);	
		compute_instance_keys(an_instance);

		b->fitness = 0;

#include "generated_fitness.cc"


	});

	transform(b, e, fitness_array, [] (const chromosome_t& cc) { return cc.fitness; });

	total_fitness = accumulate(fitness_array, fitness_array + (e-b), 0);

	if (total_fitness <= 0) throw runtime_error("fitness too law, aborting.");

}
