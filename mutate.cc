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

void mutate_instance(instance_t* b, instance_t* e, double p) {

	while (b != e) {
		for (int i = 0; i < GENIE_SCHEMA_SIZE; i++) {

			double t = ((double) random()) / RAND_MAX ; 

			if (t < p) {
				mutate_attribute(*b, i);
			}
		}
		++b;
	}
}

void mutate(chromosome_t* b, chromosome_t* e, double mp) {

	instance_t an_instance[GENIE_N_INSTANCES];

	while (b != e) {
		chromosome_to_instance(b, an_instance);

		mutate_instance(an_instance, an_instance + GENIE_N_INSTANCES, mp);

		instance_to_chromosome(an_instance, b);
		++b; 
	}
}

