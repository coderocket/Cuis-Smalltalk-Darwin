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
#include "report.h"

chromosome_t population[2][POPULATION_SIZE + POPULATION_SIZE/4];
chromosome_t* current;
chromosome_t* next;

int actual_population_size = POPULATION_SIZE;

int total_fitness = 0;

void setup() {

	current = population[0];
	next = population[1];

	mutate(current, current+actual_population_size, 1.0);

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

			std::swap(next, current);
			actual_population_size = next_population_size;
		}
		report(current, current + actual_population_size);
	}
	return 0;
}

