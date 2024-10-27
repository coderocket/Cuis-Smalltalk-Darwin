#include <algorithm>
#include "random_number_generator.h"
#include "interval.h"

extern random_number_generator interval_rng;

#pragma omp threadprivate(interval_rng)

random_number_generator interval_rng;

int interval_t::at_random() const {
	return begin + (interval_rng() % (end - begin + 1));
}
