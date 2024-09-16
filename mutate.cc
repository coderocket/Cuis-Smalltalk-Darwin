#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>

using namespace std;

#include "genie_types.h"

extern chromosome_t* fit[];

void mutate(gene_t& a_gene) {

#include "generated_mutate.cc"

}

void mutate(int b, int e, double mp) {

	double p = rand();

	for(int i = b ; i < e; i++) {
		if (p / RAND_MAX < mp)
			for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
				mutate(fit[i]->gene[j]);
			}
	}
}

