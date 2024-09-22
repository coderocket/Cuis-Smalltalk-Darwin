#include <cstdlib>
#include <array>
#include <algorithm>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"

void cross_over(chromosome_t* x, chromosome_t* y, chromosome_t* out) {

	int pt = interval_t(1, CHROMOSOME_SIZE-1).at_random();

	if (random() % 2 == 0) {
		copy(x->gene, x->gene + pt, out->gene);
		copy(y->gene+pt, y->gene + CHROMOSOME_SIZE, out->gene+pt);
	} else {
		copy(y->gene, y->gene + pt, out->gene);
		copy(x->gene+pt, x->gene + CHROMOSOME_SIZE, out->gene+pt);
	}
}
