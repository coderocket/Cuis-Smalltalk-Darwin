#include <stdexcept>
#include <sstream>
#include <array>
#include <vector>
#include "interval.h"
#include "genie_constants.h"
#include "genie_types.h"

using namespace std;

#include "generated_functions.h"

int select_at_random(const interval_t&);
int select_at_random(const vector<int>&);

void mutate_attribute(instance_t& an_instance, int index) {
	switch(index) {
#include "generated_attribute_layout.h"
	default:
		stringstream err_msg; err_msg << "unexpected index: " << index << " to function: " << "attribute_interval" ; 
		throw invalid_argument(err_msg.str()); 
	}
}

