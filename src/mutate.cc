#include <cstdlib>
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

void mutate_instance(instance_t* b, instance_t* e, double p, random_number_generator& an_rng) {

	while (b != e) {
		for (int i = 0; i < GENIE_SCHEMA_SIZE; i++) {

			random_number_generator::result_type r = an_rng();

			double t = ((double) r) / random_number_generator::max() /*RAND_MAX*/ ; 

			if (t < p) {
				mutate_attribute(*b, i);
			}
		}
		++b;
	}
}

void mutate(chromosome_t* b, chromosome_t* e, double mp) {

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
}

