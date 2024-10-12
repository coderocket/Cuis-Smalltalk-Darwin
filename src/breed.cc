#include <cmath>
#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>

#include "genie_constants.h"
#include "genie_types.h"
#include "crossover.h"

using namespace std;

extern int total_fitness;
extern int actual_population_size;

chromosome_t* match(chromosome_t* b) {
	chromosome_t* partner = b + (random() % actual_population_size);


	// look for an above average partner

	int n_attempts = 0;

	while(partner->fitness < (double)total_fitness/actual_population_size && n_attempts < 10*actual_population_size) {
		partner = b + (random() % actual_population_size);
		++n_attempts;
	}

	if (n_attempts == 10*actual_population_size)
		throw runtime_error("could not find a partner with a fitness above the average fitness, aborting.");

	return partner;
}

double next_random(struct random_data* a_random_data) {

	int i;

	random_r(a_random_data, &i);

	return (double)i / RAND_MAX;
}

int breed(chromosome_t* b, chromosome_t* e, chromosome_t* out) {

	int next_population_size = 0;

	#pragma omp parallel shared(next_population_size,out)
	{

	struct random_data a_random_data;

	a_random_data.state = NULL;

	char random_buffer[64];

	initstate_r(random(), random_buffer, 64, &a_random_data);

	chromosome_t* p ;
	chromosome_t* q ;

	#pragma omp for
	for(p = b; p != e; ++p) {

		while ( (p->num_offspring >=1 || (next_random(&a_random_data) < p->num_offspring)) && next_population_size < POPULATION_SIZE + POPULATION_SIZE / 4) {
			chromosome_t* partner = match(b);
			#pragma omp critical
			{
			q = out;
			++out; 
			++next_population_size;
			}
			cross_over(p, partner, q, &a_random_data);
			--p->num_offspring;
		}

	}
	}

	return next_population_size;
}

