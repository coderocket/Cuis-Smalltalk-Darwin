#include <cstdlib>
#include <cmath>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"

const double maxlog = -log(1-((POPULATION_SIZE-1.0)/POPULATION_SIZE));

int exprand(int z) {
	int k = random() % POPULATION_SIZE;
	double result = (((double)z)/maxlog)*-log(1-(double)k/POPULATION_SIZE);
	return (int)result;
}

