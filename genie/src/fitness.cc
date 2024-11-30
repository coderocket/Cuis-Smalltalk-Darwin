#include <config.h>
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

#include "generated_tables.h"
#include "generated_functions.h"
#include "fitness_library.cc"

void calculate_num_offspring(chromosome_t* b, chromosome_t* e) {

extern double total_fitness;

	for_each(b, e, [](chromosome_t& cc) {
		cc.num_offspring = (cc.fitness/total_fitness)*POPULATION_SIZE;
	});
}

int fitness_array[POPULATION_SIZE + POPULATION_SIZE/4];

void calculate_chromo_fitness(chromosome_t& cc) {

	instance_t an_instance[GENIE_N_INSTANCES];

	chromosome_t* b = &cc;

	chromosome_to_instance(b, an_instance);	
	compute_instance_keys(an_instance);

	b->fitness = 0;

	genie_rule_t rules[GENIE_N_RULES];
#include "generated_fitness.cc"
for(int jj = 0 ; jj < GENIE_N_RULES; jj++) 
        b->fitness += rules[jj].score*rules[jj].weight;

}

void calculate_fitness(chromosome_t* b, chromosome_t* e) {

extern double total_fitness;

	total_fitness = 0.0;

	chromosome_t* pp;
	#pragma omp parallel for
	for(pp = b; pp != e ; ++pp) calculate_chromo_fitness(*pp);

	transform(b, e, fitness_array, [] (const chromosome_t& cc) { return cc.fitness; });

	total_fitness = accumulate(fitness_array, fitness_array + (e-b), 0);

	if (total_fitness <= 0) throw runtime_error("fitness too law, aborting.");

}

