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
#include "mutate.h"
#include "image.h"

extern int actual_population_size;

void setup(chromosome_t* b) {

	int result = load_image(b);

	if (result == -1) {
		actual_population_size = POPULATION_SIZE;
		for(int i =0; i < POPULATION_SIZE; i++) {
			for(int j = 0; j < CHROMOSOME_SIZE; j++) {
				b[i].gene[j].index = j;
			}
		}
		mutate(b, b+actual_population_size, 1.0);
	} else {
		actual_population_size = result;
	}
}

