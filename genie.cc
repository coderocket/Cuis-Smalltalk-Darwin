#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include <array>
#include "generated_constants.h"
#include "genie_types.h"
#include "fitness.h"
#include "mutate.h"
#include "breed.h"

chromosome_t population[2][POPULATION_SIZE + POPULATION_SIZE/4];
chromosome_t* current;
chromosome_t* next;

int actual_population_size = POPULATION_SIZE;

int total_fitness = 0;

using std::max;
using std::min;
using std::cout;
using std::endl;
using std::swap;

void setup() {

	current = population[0];
	next = population[1];

	mutate(current, current+actual_population_size, 1.0);

}

void report(chromosome_t* b, chromosome_t* e) {

	cout << "population size = " << e-b << " " ;

	chromosome_t* p = max(b, e, [](chromosome_t* x, chromosome_t* y) { return (x)->fitness < (y)->fitness; });

	chromosome_t* q = min(b, e, [](chromosome_t* x, chromosome_t* y) { return (x)->fitness < (y)->fitness; });

	cout << " max = " << (p)->fitness << " min = " << (q)->fitness << " ";

#if 0
	for(int i = 0 ; i < e-b; i++) {
		for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
			for(int k = 0; k < GENE_SIZE; k++) {
				cout << (b+i)->gene[j][k] << " ";
			}
			cout << "";
		}
		cout << " f = " << (b+i)->fitness << endl;
	}
#endif
	cout << total_fitness / actual_population_size;
	cout << endl;
}

int main() {

	setup();

	calculate_fitness(current, current + actual_population_size);

	report(current, current + actual_population_size);

	for(int i = 0; i < N_EPOCH;i++) {

		for(int j = 0; j < N_GEN; j++) {

			int next_population_size = breed(current, current + actual_population_size, next);

			mutate(next, next + next_population_size, MUTATION_PROBABILITY);

			calculate_fitness(next, next + next_population_size);

			swap(next, current);
			actual_population_size = next_population_size;
		}
		report(current, current + actual_population_size);
		cout << endl;
	}
	return 0;
}

