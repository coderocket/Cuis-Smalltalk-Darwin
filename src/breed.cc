#include <cmath>
#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include "random_number_generator.h"
#include "genie_constants.h"
#include "genie_types.h"
#include "crossover.h"

using namespace std;

extern int total_fitness;
extern int actual_population_size;

double average_fitness;

chromosome_t* match(chromosome_t* b, random_number_generator& an_rng) {

	int n_attempts = 0;
	int max_attempts = actual_population_size;

	chromosome_t* partner = b + (an_rng() % actual_population_size);

	while (partner->fitness <= average_fitness && n_attempts < max_attempts) {
		partner = b + (an_rng() % actual_population_size);
 		++n_attempts;
	}

	if (n_attempts == max_attempts) {
		throw runtime_error("could not find a partner with a fitness above the average fitness, aborting.");
	}

	return partner;
}

int breed(chromosome_t* b, chromosome_t* e, chromosome_t* out) {

	int next_population_size = 0;

        average_fitness = (double)total_fitness/actual_population_size; 

	#pragma omp parallel shared(next_population_size,out)
	{
		random_number_generator an_rng;

		chromosome_t* p ;
		chromosome_t* q ;

		#pragma omp for
		for(p = b; p != e; ++p) {

			while ( (p->num_offspring >=1 || ((double)an_rng() < p->num_offspring)) && next_population_size < POPULATION_SIZE + POPULATION_SIZE / 4) {
				chromosome_t* partner = match(b, an_rng);
				#pragma omp critical
				{
					q = out;
					++out; 
					++next_population_size;
				}
				cross_over(p, partner, q, an_rng);
				--p->num_offspring;
			}

		}
	}

	return next_population_size;
}

