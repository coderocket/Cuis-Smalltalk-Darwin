#include <config.h>
#include <cstdlib>
#include <cmath>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include <sstream>
#include "random_number_generator.h"
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"
#include "attribute_layout.h"
#include "chromo.h"

using namespace std;

int genie_tick = 1;

double mutation_decay = 1; 

void mutate_instance(instance_t* b, instance_t* e, double p, random_number_generator& an_rng) {

	while (b != e) {
		for (int i = 0; i < GENIE_SCHEMA_SIZE; i++) {

			random_number_generator::result_type r = an_rng();

			double t = ((double) r) / random_number_generator::max(); 

			if (t < p*mutation_decay) {
				mutate_attribute(*b, i);
			}
		}
		++b;
	}
}

void mutate(chromosome_t* b, chromosome_t* e, double mp) {

	mutation_decay = pow(genie_tick, -0.125);
	
	#pragma omp parallel
	{
		instance_t an_instance[GENIE_N_INSTANCES];

		random_number_generator an_rng;
		chromosome_t* p;

		#pragma omp for
		for(p = b; p != e ; ++p) {
			chromosome_to_instance(p, an_instance);

			mutate_instance(an_instance, an_instance + GENIE_N_INSTANCES, mp, an_rng);

			instance_to_chromosome(an_instance, p);
		}
	}

	++genie_tick;
}

