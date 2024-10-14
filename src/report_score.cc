#include <iostream>
#include <iomanip>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"
#include "fitness_library.h"
#include "chromo.h"

using namespace std;

void report_score(const chromosome_t* cc, ostream& out) {

	instance_t an_instance[GENIE_N_INSTANCES];

	chromosome_to_instance(cc, an_instance);
	compute_instance_keys(an_instance);

	int score[GENIE_N_RULES];

#include "generated_fitness.cc"

	for(int jj = 0 ; jj < GENIE_N_RULES; ++jj) {

		out << setw(4) << score[jj] << ' ';
	}
}
