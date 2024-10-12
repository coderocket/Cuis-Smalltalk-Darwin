#include <unistd.h>
#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include <fstream>
#include <string>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"
#include "fitness.h"
#include "mutate.h"
#include "breed.h"
#include "invert.h"
#include "report.h"
#include "image.h"
#include "setup.h"

using std::max;
using std::string;
using std::cout;
using std::endl;
using std::cerr;
using std::fstream;

bool use_fifo = false;
string fifo_name = "gnuplot.fifo";

chromosome_t population[2][POPULATION_SIZE + POPULATION_SIZE/4];
chromosome_t* current;
chromosome_t* next;

int actual_population_size = POPULATION_SIZE;

int next_population_size = 0;

int total_fitness = 0;

void produce_next_generation() {

	calculate_num_offspring(current, current + actual_population_size);

	next_population_size = breed(current, current + actual_population_size, next);

	invert(next, next + next_population_size, INVERSION_PROBABILITY);
	mutate(next, next + next_population_size, MUTATION_PROBABILITY);

	calculate_fitness(next, next + next_population_size);

}

chromosome_t* find_fittest_chromosome(chromosome_t* b, chromosome_t* e) {

	return best(b, e); 
}

int main(int argc, char** argv) {

	srandom(random());

	use_fifo = false;

	if (argc >=2) {
		if (string(argv[1]) == "-h") {
			cout << "Usage: genie [-file filename]" << endl;
			exit(1);
		}
		if (string(argv[1]) == "-file") {
			if (argc == 2) 
				use_fifo = true;
			else if(argc > 3) {
				cout << "Usage: genie [-fifo fifo]" << endl;
				exit(1);
			} else {
				assert(argc == 3);

				use_fifo = true;
				fifo_name = string(argv[2]);
			}
		} 
		else {
			cout << "Usage: genie [-file filename]" << endl;
			exit(1);
		}
	}

	current = population[0];
	next = population[1];

	setup(current);

	calculate_fitness(current, current + actual_population_size);
 
	report_progress(current, current + actual_population_size);

	for(int i = 0; i < N_EPOCH;i++) {

		for(int j = 0; j < N_GEN; j++) {
			produce_next_generation();
			std::swap(next, current);
			actual_population_size = next_population_size;
		}
		report_progress(current, current + actual_population_size);
	}

	chromosome_t* solution = find_fittest_chromosome(current, current+actual_population_size);

	fstream file("solution.json", std::ios::out);

	json_write_solution(solution, file);

	file.close();

	store_image(current, current+actual_population_size);

	return 0;
}
