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

void mutate(gene_t& a_gene) {

#include "generated_mutate.cc"

}

void mutate(chromosome_t* b, chromosome_t* e, double mp) {

	double p = rand();

	while (b != e) {
		if (p / RAND_MAX < mp)
			for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
				mutate(b->gene[j]);
			}
		b++;
	}
}

