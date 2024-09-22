#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include <sstream>

#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"

using namespace std;

#include "generated_tables.h"

void mutate(gene_t& a_gene, double p) {

	double t = ((double)random()) / RAND_MAX;

	if (t < p) {
#include "generated_mutate.cc"
	}

}

void mutate(chromosome_t* b, chromosome_t* e, double mp) {

	while (b != e) {
		for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
			mutate(b->gene[j], mp);
		}
		b++;
	}
}

