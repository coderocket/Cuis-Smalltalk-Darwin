#include <unistd.h>
#include <fcntl.h>
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

using std::fstream;
using std::max;
using std::string;
using std::cout;
using std::endl;
using std::cerr;

bool use_fifo = false;
string fifo_name = "fifo";

const char* image_filename = "population.gimage";

chromosome_t population[2][POPULATION_SIZE + POPULATION_SIZE/4];
chromosome_t* current;
chromosome_t* next;

int actual_population_size = POPULATION_SIZE;

int next_population_size = 0;

int total_fitness = 0;

const int IMAGE_MAGIC[] = {7247, 6361};
 
int IMAGE_VERSION_INDEX 	= 2;
int IMAGE_POP_SIZE_INDEX 	= 3;
int IMAGE_CHROMO_SIZE_INDEX 	= 4;
int IMAGE_GENE_SIZE_INDEX 	= 5;

void store_image() {

	int image_header[] = { /* two magic numbers */ IMAGE_MAGIC[0], IMAGE_MAGIC[1] , /* version number */ 1, /* population size */ 0 , /* chromosome size */ 0 , /* gene size */ 0  };

	int fd = open(image_filename, O_RDWR | O_CREAT, 0600);

	if (fd == -1) {
		perror("could not open image file");
		exit(1);
	}

	image_header[IMAGE_POP_SIZE_INDEX] = actual_population_size;
	image_header[IMAGE_CHROMO_SIZE_INDEX] = CHROMOSOME_SIZE;
	image_header[IMAGE_GENE_SIZE_INDEX] = GENE_SIZE;

	size_t count = write(fd, image_header, sizeof(image_header));

	if (count == -1) {
		perror("could not write image header");
		exit(1);
	}

	count = write(fd, current, actual_population_size*sizeof(chromosome_t));

	if (count == -1) {
		perror("could not write population");
		exit(1);
	}

	close(fd);
}

int load_image() {

	int image_header[] = { /* two magic numbers */ 0 , 0 , /* version number */ 1, /* population size */ 0 , /* chromosome size */ 0 , /* gene size */ 0  };

	int fd = open(image_filename, O_RDONLY);

	if (errno == ENOENT) {
		cerr << "image file does not exist" << endl;
		return -1;
	}

	if (fd == -1) {
		perror("could not open image file");
		exit(1);
	}

	size_t count = read(fd, image_header, sizeof(image_header));

	if (image_header[0] != IMAGE_MAGIC[0] || image_header[1] != IMAGE_MAGIC[1]) {
		cerr << image_filename << " is not a genie image file" << endl;
		exit(1);
	}

	if (image_header[IMAGE_CHROMO_SIZE_INDEX] != CHROMOSOME_SIZE) {
		
		cerr << image_filename << " has an incompatible chromosome size " <<  image_header[IMAGE_CHROMO_SIZE_INDEX] << " required " << CHROMOSOME_SIZE << endl;
		exit(1);
	}

	if (image_header[IMAGE_GENE_SIZE_INDEX] != GENE_SIZE) {
		cerr << image_filename << " has an incompatible gene size " <<  image_header[IMAGE_GENE_SIZE_INDEX] << " required " << GENE_SIZE << endl;
		exit(1);
	}

	if (image_header[IMAGE_POP_SIZE_INDEX] > POPULATION_SIZE + POPULATION_SIZE / 4) {
		cerr << image_filename << " population size too big " <<  image_header[IMAGE_POP_SIZE_INDEX] << " > " << POPULATION_SIZE + POPULATION_SIZE / 4 << endl;
		exit(1);
	}
 

	actual_population_size = image_header[IMAGE_POP_SIZE_INDEX];

	count = read(fd, current, actual_population_size*sizeof(chromosome_t));

	if (count == -1) {
		perror("could not read image population");
		exit(1);
	}

	close(fd);

	cerr << "image loaded." << endl;

	return 1;
}

void setup() {

	current = population[0];

	int result = load_image();

	if (result == -1) {
		for(int i = 0 ; i < actual_population_size;i++) {
			for(int j = 0 ; j < CHROMOSOME_SIZE; j++) {
				current[i].gene[j][GENIE_LOCUS] = j + 1;
			}
		}
		mutate(current, current+actual_population_size, 1.0);
	}

	next = population[1];
}

void produce_next_generation() {

	calculate_num_offspring(current, current + actual_population_size);

	next_population_size = breed(current, current + actual_population_size, next);

	invert(next, next + next_population_size, INVERSION_PROBABILITY);
	mutate(next, next + next_population_size, MUTATION_PROBABILITY);

	calculate_fitness(next, next + next_population_size);

}

chromosome_t* find_fittest_chromosome(chromosome_t* b, chromosome_t* e) {

	return max(b, e, [](chromosome_t* x, chromosome_t* y) { return (x)->fitness < (y)->fitness; });

}

int main(int argc, char** argv) {

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

	setup();

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

	store_image();

	return 0;
}

