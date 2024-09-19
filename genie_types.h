
typedef std::array<GENE_TYPE, GENE_SIZE> gene_t;

struct chromosome_t {
	gene_t gene[CHROMOSOME_SIZE];
	GENE_TYPE fitness;
	double num_offspring;
};
