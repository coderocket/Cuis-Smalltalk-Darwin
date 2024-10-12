#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include <sstream>

#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"
#include "attribute_layout.h"
#include "chromo.h"

using namespace std;

void mutate_instance(instance_t* b, instance_t* e, double p, struct random_data* a_random_data) {

	while (b != e) {
		for (int i = 0; i < GENIE_SCHEMA_SIZE; i++) {

			int r = 0;
			random_r(a_random_data, &r);

			double t = ((double) r) / RAND_MAX ; 

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

	struct random_data a_random_data;

	a_random_data.state = NULL;

	char random_buffer[64];

	initstate_r(random(), random_buffer, 64, &a_random_data);

	chromosome_t* p;

	#pragma omp for
	for(p = b; p != e ; ++p) {
		chromosome_to_instance(p, an_instance);

		mutate_instance(an_instance, an_instance + GENIE_N_INSTANCES, mp, &a_random_data);

		instance_to_chromosome(an_instance, p);
	}
	}
}

