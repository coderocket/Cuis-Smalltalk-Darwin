#include <cstdlib>
#include <algorithm>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"

using namespace std;

void invert(chromosome_t* c) {

	int x = random() % (CHROMOSOME_SIZE + 1);
	int y = random() % (CHROMOSOME_SIZE + 1);

	int b = min(x,y);
	int e = max(x,y);

	reverse(c->gene+b, c->gene+e);
}

void invert(chromosome_t* b, chromosome_t* e, double p) {
	while (b != e) {

		if ((double)random() / RAND_MAX < p)
			invert(b);

		++b;
	}
}
