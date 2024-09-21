#include <cassert>
#include <algorithm>
#include <iostream>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"

extern int actual_population_size; 

extern int total_fitness; 

using std::max;
using std::min;
using std::cout;
using std::endl;

void report(chromosome_t* b, chromosome_t* e) {

	cout << "population size = " << e-b << " " ;

	chromosome_t* p = max(b, e, [](chromosome_t* x, chromosome_t* y) { return (x)->fitness < (y)->fitness; });

	chromosome_t* q = min(b, e, [](chromosome_t* x, chromosome_t* y) { return (x)->fitness < (y)->fitness; });

	cout << " max = " << (p)->fitness << " min = " << (q)->fitness << " ";

	cout << total_fitness / actual_population_size << endl;

	for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
		for(int k = 0; k < GENE_SIZE; k++) {
			cout << (p)->gene[j][k] << " ";
		}
		cout << "";
	}
	cout << endl;
}

