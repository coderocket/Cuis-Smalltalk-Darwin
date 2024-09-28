#include <assert.h>
#include <cstdlib>
#include <array>
#include <algorithm>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"

bool compare_by_locus(const gene_t& g, const gene_t& h) { 
	return g[GENIE_LOCUS] < h[GENIE_LOCUS]; 
}

/*
x = ((1, a1), (3, a3), (2, a2), (4, a4))
y = ((4, b4), (2,b2), (1,b1), (3,b3))

tmp = ((1,b1),(2,b2),(3,b3),(4,b4)) 

assert tmp[i].locs == i

out = ((1,b1), (3,b3), (2,b2), (4,b4))

*/

void rearrange_homologous(const gene_t* x, const gene_t* y , gene_t* out) {

	gene_t tmp[CHROMOSOME_SIZE];
	copy(y,y+CHROMOSOME_SIZE, tmp);
	sort(tmp, tmp+CHROMOSOME_SIZE, compare_by_locus);

	for(int i = 0; i < CHROMOSOME_SIZE; i++) {
		out[i] = tmp[x[i][GENIE_LOCUS] - 1]; // LOCUS indices start at 1
	}
}

bool check_homology(const gene_t* x, const gene_t* y) {
	int i = 0;
	while (i < CHROMOSOME_SIZE && x[i][GENIE_LOCUS] == y[i][GENIE_LOCUS]) i++;
	return i == CHROMOSOME_SIZE;
}

void cross_over_homologous(const gene_t* x, const gene_t* y, gene_t* out) {

	int pt = interval_t(1, CHROMOSOME_SIZE-1).at_random();

	if (random() % 2 == 0) {
		copy(x, x + pt, out);
		copy(y+pt, y + CHROMOSOME_SIZE, out+pt);
	} else {
		copy(y, y + pt, out);
		copy(x+pt, x + CHROMOSOME_SIZE, out+pt);
	}
}

void cross_over(chromosome_t* x, chromosome_t* y, chromosome_t* out) {

	if (!check_homology(x->gene, y->gene)) {

		gene_t c[CHROMOSOME_SIZE];

		rearrange_homologous(x->gene, y->gene, c);
		assert(check_homology(x->gene, c));
		cross_over_homologous(c, x->gene, out->gene); 
	}
	else {
		cross_over_homologous(x->gene, y->gene, out->gene); 
	}
}

