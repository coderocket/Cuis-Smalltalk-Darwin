
#include <array>
#include "interval.h"
#include "generated_constants.h"

typedef std::array<GENE_TYPE, GENE_SIZE> gene_t;

struct chromosome_t {
	gene_t gene[CHROMOSOME_SIZE];
	GENE_TYPE fitness;
};
