#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>

using namespace std;

#include "genie_types.h"

extern chromosome_t chromosome[];

void mutate(gene_t& a_gene) {

#include "generated_mutate.cc"

}

void mutate(double mp) {

	double p = rand();

	for(int i = 0 ; i < POPULATION_SIZE; i++) {
		if (p / RAND_MAX < mp)
			for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
				mutate(chromosome[i].gene[j]);
			}
	}
}

