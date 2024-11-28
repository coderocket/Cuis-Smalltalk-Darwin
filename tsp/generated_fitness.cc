
rule_location[0] = 218;

score[0] = 0;

double total_distance = 0.0;

vector<int> cities;

for(int ii = 0; ii < GENIE_N_INSTANCES ; ++ii) {
	cities.push_back(ii);
}

for(int ii =0; ii < GENIE_N_INSTANCES; ++ii) {
	int p = an_instance[ii][GENIE_INDEX] % cities.size();
	an_instance[ii][GENIE_CITY] = cities[p];
	cities[p] = cities.back();
	cities.pop_back();
}

for(int ii = 0 ; ii < GENIE_N_INSTANCES - 1; ++ii) {

	total_distance += euclid_distance(an_instance[ii], an_instance[ii+1]);
}

total_distance += euclid_distance(an_instance[GENIE_N_INSTANCES-1], an_instance[0]);

score[0] = 4000 - total_distance;

