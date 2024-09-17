#include <cmath>
#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>

using namespace std;

#include "genie_types.h"
#include "exprand.h"

extern chromosome_t* fit[POPULATION_SIZE+N_OFFSPRING];

void breed() {

	for(int i = POPULATION_SIZE; i < POPULATION_SIZE + N_OFFSPRING / 2 ; i+=2) {
		int parent_p = exprand(N_PARENT); //interval_t(0, N_PARENT).at_random();
		int parent_q = exprand(N_PARENT); // interval_t(0, N_PARENT).at_random();

		// first offspring gets lower half of p and upper half of q

		copy(fit[parent_p]->gene, fit[parent_p]->gene+CHROMOSOME_SIZE/2, fit[i]->gene);
		copy(fit[parent_q]->gene+CHROMOSOME_SIZE/2, fit[parent_q]->gene+CHROMOSOME_SIZE, fit[i]->gene+CHROMOSOME_SIZE/2);

		// second offspring get upper half of p and lower half of q

		copy(fit[parent_q]->gene, fit[parent_q]->gene+CHROMOSOME_SIZE/2, fit[i+1]->gene);
		copy(fit[parent_p]->gene+CHROMOSOME_SIZE/2, fit[parent_p]->gene+CHROMOSOME_SIZE, fit[i+1]->gene+CHROMOSOME_SIZE/2);

	}

}
		

