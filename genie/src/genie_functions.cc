#include <config.h>
#include <sstream>
#include <stdexcept>
#include <vector>
#include <map>
#include <array>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"

using namespace std;

int select_at_random(const vector<int>& v) {

	int index = interval_t(0, v.size() - 1).at_random();

	return v[index];
}

int select_at_random(const interval_t& ii) {
	return ii.at_random();
}

#include "generated_functions.cc"
