
#include "interval.h"
#include "generated_constants.h"

typedef int gene_t[GENE_SIZE] ;

struct chromosome_t {
	gene_t gene[CHROMOSOME_SIZE];
	int fitness;
};

