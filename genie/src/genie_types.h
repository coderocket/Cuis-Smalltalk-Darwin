typedef std::array<int, INSTANCE_SIZE> instance_t ;

struct gene_t {
	int value;
	int index;
};

struct chromosome_t {
	gene_t gene[CHROMOSOME_SIZE];
	double fitness;
	double num_offspring;
};

struct genie_rule_t {
	double score;
	double weight;
	int location;
};
