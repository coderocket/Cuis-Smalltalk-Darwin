#include <cassert>
#include <stdlib.h>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"
#include "chromo.h"

using namespace std;

int main() {
	
	chromosome_t cc;

	for(int i = 0; i < CHROMOSOME_SIZE;i++) {
		cc.gene[i].value = random() % 12;
		cc.gene[i].index = i; 
	}

	instance_t an_instance[GENIE_N_INSTANCES];

	chromosome_to_instance(&cc, an_instance);

	chromosome_t dd;

	for(int i =0 ; i < CHROMOSOME_SIZE;i++) {
		dd.gene[i].index = cc.gene[i].index;
	}

	instance_to_chromosome(an_instance, &dd);

	for(int i =0; i< CHROMOSOME_SIZE;i++) {
		assert(cc.gene[i].value == dd.gene[i].value);
	}

	return 0;
}

