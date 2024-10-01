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

using namespace std;

void mutate(gene_t& a_gene, double p) {

	double t = ((double) random()) / RAND_MAX ; 

	if (t < p) {
		int attribute_index = a_gene.index % GENIE_SCHEMA_SIZE;
		a_gene.value =  attribute_interval[attribute_index].at_random ( ) ;
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

