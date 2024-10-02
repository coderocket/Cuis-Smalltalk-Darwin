#include "generated_constants.h"

const int N_EPOCH 		= GENIE_EPOCHS;
const int N_GEN 		= GENIE_GENERATIONS;
const int N_THREAD 		= GENIE_THREADS;
const int POPULATION_SIZE 	= GENIE_POPULATION;
const int GENIE_N_INSTANCES	= GENIE_INSTANCES;
const int CHROMOSOME_SIZE 	= GENIE_N_INSTANCES * GENIE_SCHEMA_SIZE;
const int INSTANCE_SIZE 	= GENIE_SCHEMA_SIZE + GENIE_KEY_SIZE + 1;
const int GENIE_ID		= INSTANCE_SIZE - 1;
const double MUTATION_PROBABILITY = GENIE_MUTATIONP; 
const double INVERSION_PROBABILITY = GENIE_INVERSIONP;

const int GENIE_SEED = 5;

