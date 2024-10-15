#include <iostream>
#include <iomanip>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"
#include "fitness_library.h"
#include "chromo.h"

using namespace std;

void prepare_score(const chromosome_t* cc, int* score) {

	instance_t an_instance[GENIE_N_INSTANCES];

	chromosome_to_instance(cc, an_instance);
	compute_instance_keys(an_instance);

#include "generated_fitness.cc"

}

void report_score(const chromosome_t* cc, ostream& out) {

	int score[GENIE_N_RULES];

	prepare_score(cc, score);

	for(int jj = 0 ; jj < GENIE_N_RULES; ++jj) {

		out << score[jj] << " ";
	}
}

void report_score_gnuplot(const chromosome_t* cc, ostream& out) {

	int score[GENIE_N_RULES];

	prepare_score(cc, score);

	for(int jj = 1 ; jj < GENIE_N_RULES; ++jj) { // don't print the large bonus in the first score array

		out << jj << ' ' << score[jj] << '\n';
	}

	out << endl;
}
