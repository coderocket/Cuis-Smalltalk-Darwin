#include <assert.h>
#include <cstdlib>
#include <array>
#include <algorithm>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"

using std::copy;
using std::sort;

bool compare_by_index(const gene_t& g, const gene_t& h) { 
	return g.index < h.index; 
}

/*
x = ((1, a1), (3, a3), (2, a2), (4, a4))
y = ((4, b4), (2,b2), (1,b1), (3,b3))

tmp = ((1,b1),(2,b2),(3,b3),(4,b4)) 

assert tmp[i].index == i

out = ((1,b1), (3,b3), (2,b2), (4,b4))

*/

void rearrange_homologous(const gene_t* x, const gene_t* y , gene_t* out) {

	gene_t tmp[CHROMOSOME_SIZE];
	copy(y,y+CHROMOSOME_SIZE, tmp);
	sort(tmp, tmp+CHROMOSOME_SIZE, compare_by_index);
	for(int i = 0 ; i < CHROMOSOME_SIZE; i++) {
		out[i] = tmp[x[i].index];
	}
}

bool check_homology(const gene_t* x, const gene_t* y) {
	int i = 0;
	while (i < CHROMOSOME_SIZE && x[i].index == y[i].index) i++;
	return i == CHROMOSOME_SIZE;
}

void cross_over_homologous(const gene_t* x, const gene_t* y, gene_t* out, struct random_data* a_random_data) {

	int pt = interval_t(1, CHROMOSOME_SIZE-1).at_random();

	int dice;

	random_r(a_random_data, &dice);

	if (dice % 2 == 0) {
		copy(x, x + pt, out);
		copy(y+pt, y + CHROMOSOME_SIZE, out+pt);


	} else {
		copy(y, y + pt, out);
		copy(x+pt, x + CHROMOSOME_SIZE, out+pt);
	}
}

void cross_over(chromosome_t* x, chromosome_t* y, chromosome_t* out, struct random_data* a_random_data) {

	if (!check_homology(x->gene, y->gene)) {

		gene_t c[CHROMOSOME_SIZE];

		rearrange_homologous(x->gene, y->gene, c);
		assert(check_homology(x->gene, c));
		cross_over_homologous(c, x->gene, out->gene, a_random_data); 
	}
	else {
		cross_over_homologous(x->gene, y->gene, out->gene, a_random_data); 
	}
}

