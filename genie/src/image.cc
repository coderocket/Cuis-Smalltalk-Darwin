#include <config.h>
#include <unistd.h>
#include <fcntl.h>
#include <cstdlib>
#include <cassert>
#include <iostream>
#include <fstream>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"

using std::fstream;
using std::max;
using std::cout;
using std::endl;
using std::cerr;

const char* image_filename = "population.gimage";

const int IMAGE_MAGIC[] = {7247, 6361};
 
int IMAGE_VERSION_INDEX 	= 2;
int IMAGE_POP_SIZE_INDEX 	= 3;
int IMAGE_CHROMO_SIZE_INDEX 	= 4;
int IMAGE_GENE_SIZE_INDEX 	= 5;

void store_image(const chromosome_t* b, const chromosome_t* e) {

	int image_header[] = { /* two magic numbers */ IMAGE_MAGIC[0], IMAGE_MAGIC[1] , /* version number */ 1, /* population size */ 0 , /* chromosome size */ 0 , /* gene size */ 0  };

	int fd = open(image_filename, O_RDWR | O_CREAT, 0600);

	if (fd == -1) {
		perror("could not open image file");
		exit(1);
	}

	image_header[IMAGE_POP_SIZE_INDEX] = e-b;
	image_header[IMAGE_CHROMO_SIZE_INDEX] = CHROMOSOME_SIZE;
	image_header[IMAGE_GENE_SIZE_INDEX] = GENIE_SCHEMA_SIZE;

	size_t count = write(fd, image_header, sizeof(image_header));

	if (count == -1) {
		perror("could not write image header");
		exit(1);
	}

	count = write(fd, b, (e-b)*sizeof(chromosome_t));

	if (count == -1) {
		perror("could not write population");
		exit(1);
	}

	close(fd);
}

int load_image(chromosome_t* b) {

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

	if (image_header[IMAGE_GENE_SIZE_INDEX] != GENIE_SCHEMA_SIZE) {
		cerr << image_filename << " has an incompatible gene size " <<  image_header[IMAGE_GENE_SIZE_INDEX] << " required " << GENIE_SCHEMA_SIZE << endl;
		exit(1);
	}

	if (image_header[IMAGE_POP_SIZE_INDEX] > POPULATION_SIZE + POPULATION_SIZE / 4) {
		cerr << image_filename << " population size too big " <<  image_header[IMAGE_POP_SIZE_INDEX] << " > " << POPULATION_SIZE + POPULATION_SIZE / 4 << endl;
		exit(1);
	}
 

	int population_size = image_header[IMAGE_POP_SIZE_INDEX];

	count = read(fd, b, population_size*sizeof(chromosome_t));

	if (count == -1) {
		perror("could not read image population");
		exit(1);
	}

	close(fd);

	cerr << "image loaded." << endl;

	return population_size;
}

