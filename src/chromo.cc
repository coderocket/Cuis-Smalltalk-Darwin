#include <assert.h>
#include <array>
#include <vector>
#include "interval.h"
#include "genie_constants.h"
#include "genie_types.h"

using std::vector;

#include "generated_functions.h"

void chromosome_to_instance(const chromosome_t* c, instance_t* out) {

	const gene_t* b = c->gene;
	const gene_t* e = c->gene+CHROMOSOME_SIZE;
	while (b != e) {
		int i = b->index / GENIE_SCHEMA_SIZE;
		out[i][b->index % GENIE_SCHEMA_SIZE] = b->value;
		out[i][GENIE_ID] = i;
		++b;
	}
}

void instance_to_chromosome(const instance_t* b, chromosome_t* out) {
	for(int i = 0; i < CHROMOSOME_SIZE; i++) {
		int index = out->gene[i].index / GENIE_SCHEMA_SIZE;
		int attr = out->gene[i].index % GENIE_SCHEMA_SIZE;
		assert(index < GENIE_N_INSTANCES);
		out->gene[i].value = b[index][attr];
	}
}

void compute_instance_keys(instance_t* b) {

	for(int i = 0; i < GENIE_N_INSTANCES;i++) {
		instance_t& an_instance = b[i];
		an_instance[GENIE_ID] = i;
#include "generated_keys.cc"
	}
}

