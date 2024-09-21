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

int breed(chromosome_t* b, chromosome_t* e, chromosome_t* out) {

	int next_population_size = 0;

	chromosome_t* p = b;

	while(p != e) {

		while ((int)p->num_offspring >=1 && next_population_size < POPULATION_SIZE + POPULATION_SIZE / 4) {

			chromosome_t* partner = b + (rand() % actual_population_size);
			// look for an above average partner

			int n_attempts = 0;

			while(partner->fitness < (double)total_fitness/actual_population_size && n_attempts < 10*actual_population_size) {
				partner = b + (rand() % actual_population_size);
				++n_attempts;
			}

			if (n_attempts == 10*actual_population_size)
				throw runtime_error("could not find a partner with a fitness above the average fitness, aborting.");

			cross_over(p, partner, out);

			out += 1;
			p->num_offspring -= 1;
			next_population_size += 1;
		}

		if ((double)rand() / RAND_MAX < p->num_offspring && next_population_size < POPULATION_SIZE + POPULATION_SIZE /4) {
			chromosome_t* partner = b + (rand() % actual_population_size);
			while(partner->fitness < (double)total_fitness/actual_population_size)
				partner = b + (rand() % actual_population_size);

			cross_over(p, partner, out);

			++out;
			p->num_offspring -= 1;
			++next_population_size;
		}

		++p;
	}

	return next_population_size;
}

