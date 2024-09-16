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

void setup() {

	mutate(1.0);

}

void report() {

	for(int i = 0; i < POPULATION_SIZE; i++) {
		cout << chromosome[i].fitness << ": ";
		for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
			for(int k = 0; k < GENE_SIZE; k++) {
				cout << chromosome[i].gene[j][k] << " ";
			}
			cout << " | ";
		}
		cout << endl;
	}
}

int main() {

	setup();

	calculate_fitness();

	report();

	return 0;
}

