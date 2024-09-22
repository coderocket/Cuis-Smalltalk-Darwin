#include <cstdlib>
#include <array>
#include <algorithm>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"

bool compare_by_locus(const gene_t& g, const gene_t& h) { 
	return g[GENIE_LOCUS] < h[GENIE_LOCUS]; 
}

void rearrange_homologous(gene_t* x, gene_t* b) {
	copy(x, x+CHROMOSOME_SIZE, b);
	sort(b, b+CHROMOSOME_SIZE, compare_by_locus);
}

bool check_homology(gene_t* x, gene_t* y) {
	int i = 0;
	while (i < CHROMOSOME_SIZE && x[i][GENIE_LOCUS] == y[i][GENIE_LOCUS]) i++;
	return i == CHROMOSOME_SIZE;
}

void cross_over(chromosome_t* x, chromosome_t* y, chromosome_t* out) {

	gene_t c[CHROMOSOME_SIZE];
	gene_t d[CHROMOSOME_SIZE];

	gene_t *u = x->gene;
	gene_t* v = y->gene;

	if (!check_homology(u, v)) {
		rearrange_homologous(u, c);
		rearrange_homologous(v, d);
		u = c;
		v = d;
	}

	int pt = interval_t(1, CHROMOSOME_SIZE-1).at_random();

	if (random() % 2 == 0) {
		copy(u, u + pt, out->gene);
		copy(v+pt, v + CHROMOSOME_SIZE, out->gene+pt);
	} else {
		copy(v, v + pt, out->gene);
		copy(u+pt, u + CHROMOSOME_SIZE, out->gene+pt);
	}
}
