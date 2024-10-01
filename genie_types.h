typedef std::array<int, GENIE_SCHEMA_SIZE> instance_t ;

struct gene_t {
	int value;
	int index;
};

struct chromosome_t {
	gene_t gene[CHROMOSOME_SIZE];
	int fitness;
	double num_offspring;
};
