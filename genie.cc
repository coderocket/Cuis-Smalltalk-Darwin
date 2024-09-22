#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"
#include "fitness.h"
#include "mutate.h"
#include "breed.h"
#include "invert.h"
#include "report.h"

chromosome_t population[2][POPULATION_SIZE + POPULATION_SIZE/4];
chromosome_t* current;
chromosome_t* next;

int actual_population_size = POPULATION_SIZE;

int next_population_size = 0;

int total_fitness = 0;

void setup() {

	current = population[0];
	next = population[1];

	for(int i = 0 ; i < actual_population_size;i++) {
		for(int j = 0 ; j < CHROMOSOME_SIZE; j++) {
			current[i].gene[j][GENIE_LOCUS] = j;
		}
	}

	mutate(current, current+actual_population_size, 1.0);

}

void produce_next_generation() {

	calculate_num_offspring(current, current + actual_population_size);

	next_population_size = breed(current, current + actual_population_size, next);

	invert(next, next + next_population_size, INVERSION_PROBABILITY);
	mutate(next, next + next_population_size, MUTATION_PROBABILITY);

	calculate_fitness(next, next + next_population_size);

}

int main() {

	setup();

	calculate_fitness(current, current + actual_population_size);

	report(current, current + actual_population_size);

	for(int i = 0; i < N_EPOCH;i++) {

		for(int j = 0; j < N_GEN; j++) {
			produce_next_generation();
			std::swap(next, current);
			actual_population_size = next_population_size;
		}
		report(current, current + actual_population_size);
	}
	return 0;
}

