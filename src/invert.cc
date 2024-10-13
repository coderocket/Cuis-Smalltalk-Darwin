#include <cstdlib>
#include <algorithm>
#include <array>
#include "random_number_generator.h"
#include "genie_constants.h"
#include "genie_types.h"

using namespace std;

void invert(chromosome_t* c, random_number_generator& an_rng) {

	int x = an_rng() % (CHROMOSOME_SIZE + 1);
	int y = an_rng() % (CHROMOSOME_SIZE + 1);

	int b = min(x,y);
	int e = max(x,y);

	reverse(c->gene+b, c->gene+e);
}

void invert(chromosome_t* b, chromosome_t* e, double p) {

	#pragma omp parallel
	{
		random_number_generator an_rng;

		chromosome_t* q;

		#pragma omp for
		for(q = b; q != e ;++q) {

			if ((double)an_rng() / RAND_MAX < p)
				invert(q, an_rng);
		}
	}
}
