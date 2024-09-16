#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include "fitness.h"
#include "mutate.h"

using namespace std;

#include "genie_types.h"

chromosome_t chromosome[POPULATION_SIZE+N_OFFSPRING];
chromosome_t* fit[POPULATION_SIZE+N_OFFSPRING];

void setup() {

	for(int i = 0; i < POPULATION_SIZE+N_OFFSPRING;i++) {
		fit[i] = &chromosome[i];
	}

	mutate(0, POPULATION_SIZE+N_OFFSPRING, 1.0);

}

void sort_by_fitness() {
	sort(fit, fit+POPULATION_SIZE+N_OFFSPRING, [](chromosome_t* p, chromosome_t* q) { return p->fitness > q->fitness; });
}

void breed() {

	for(int i = POPULATION_SIZE; i < POPULATION_SIZE + N_OFFSPRING / 2 ; i+=2) {
		int parent_p = interval_t(0, N_PARENT).at_random();
		int parent_q = interval_t(0, N_PARENT).at_random();

		// first offspring gets lower half of p and upper half of q

		copy(fit[parent_p]->gene, fit[parent_p]->gene+CHROMOSOME_SIZE/2, fit[i]->gene);
		copy(fit[parent_q]->gene+CHROMOSOME_SIZE/2, fit[parent_q]->gene+CHROMOSOME_SIZE, fit[i]->gene+CHROMOSOME_SIZE/2);

		// second offspring get upper half of p and lower half of q

		copy(fit[parent_q]->gene, fit[parent_q]->gene+CHROMOSOME_SIZE/2, fit[i+1]->gene);
		copy(fit[parent_p]->gene+CHROMOSOME_SIZE/2, fit[parent_p]->gene+CHROMOSOME_SIZE, fit[i+1]->gene+CHROMOSOME_SIZE/2);

	}

}
		
void report() {

#if 0
	for(int i = 0; i < POPULATION_SIZE+N_OFFSPRING; i++) {
		cout << fit[i]->fitness << ": ";
		for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
			for(int k = 0; k < GENE_SIZE; k++) {
				cout << fit[i]->gene[j][k] << " ";
			}
			cout << "|";
		}
		cout << endl;
	}
#endif

	chromosome_t** p = max(fit+0, fit+POPULATION_SIZE, [](chromosome_t** p, chromosome_t** q) { return (*p)->fitness < (*q)->fitness; });

	chromosome_t** q = max(fit+0, fit+POPULATION_SIZE, [](chromosome_t** p, chromosome_t** q) { return (*p)->fitness > (*q)->fitness; });

	cout << (*p)->fitness << " " << (*q)->fitness << endl;

	for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
		for(int k = 0; k < GENE_SIZE; k++) {
			cout << (*p)->gene[j][k] << " ";
		}
		cout << "";
	}
}

int main() {

	setup();

	calculate_fitness(0, POPULATION_SIZE+N_OFFSPRING);

	sort_by_fitness();

	for(int i = 0; i < N_EPOCH;i++) {

		for(int j = 0; j < N_GEN; j++) {

			breed();

			mutate(POPULATION_SIZE, POPULATION_SIZE+N_OFFSPRING, MUTATION_PROBABILITY);

			calculate_fitness(POPULATION_SIZE, POPULATION_SIZE+N_OFFSPRING);

			sort_by_fitness();
		}
		report();
		cout << endl;
	}
	return 0;
}

