
rule_location[0] = 211;
score[0] = 5000;

rule_location[1] = 236;
score[1] = 0;

rule_location[2] = -99;
score[2] = 0;

{
	score[2] -= 1*abs(51 - sum(an_instance, an_instance + GENIE_N_INSTANCES, [] (const instance_t* each) { return (*each)[GENIE_BIT];}));

}

rule_location[3] = -99;
score[3] = 0;

{
	void bitmap_to_edges(int n, const int* a, int*x, int*y);

	int x[GENIE_N_INSTANCES], y[GENIE_N_INSTANCES];
	int a[GENIE_N_INSTANCES];
	
	for(int ii = 0; ii < GENIE_N_INSTANCES;++ii) {
		a[ii] = an_instance[ii][GENIE_BIT];
	}
	
	for(int ii = 0; ii < GENIE_N_INSTANCES; ++ii) {
		x[ii] = -1; y[ii] = -1;
	}

	bitmap_to_edges(51, a, x, y);
	
	set<int> cities;

	for(int ii = 0 ; ii < 51; ++ii) {
		if (x[ii] != -1)
			cities.insert(x[ii]);
		if (y[ii] != -1)
			cities.insert(y[ii]);
	}
	
	score[3] -= (51 - cities.size());
}


rule_location[4] = -99;
score[4] = 0;

{
	void bitmap_to_edges(int n, const int* a, int*x, int*y);

	int x[GENIE_N_INSTANCES], y[GENIE_N_INSTANCES];
	int a[GENIE_N_INSTANCES];
	
	for(int ii = 0; ii < GENIE_N_INSTANCES;++ii) {
		a[ii] = an_instance[ii][GENIE_BIT];
	}

	for(int ii = 0; ii < GENIE_N_INSTANCES; ++ii) {
		x[ii] = -1; y[ii] = -1;
	}
	
	bitmap_to_edges(51, a, x, y);
	set<int> adj[51];

	for(int ii = 0 ; ii < 51; ++ii) {
		if (x[ii] != -1) 
		{
			assert(y[ii] != -1);
			adj[x[ii]].insert(y[ii]);
		}
		if (y[ii] != -1)
		{
			assert(x[ii] != -1);
			adj[y[ii]].insert(x[ii]);
		}
	}
	
	for(int ii = 0; ii < 51; ++ii) {
		score[4] -= 1*abs((int) (2 - adj[ii].size()));
	}
}

rule_location[5] = -99;

score[5] = 0;

{
	void bitmap_to_edges(int n, const int* a, int*x, int*y);

	int x[GENIE_N_INSTANCES], y[GENIE_N_INSTANCES];
	int a[GENIE_N_INSTANCES];

	for(int ii = 0; ii < GENIE_N_INSTANCES;++ii) {
		a[ii] = an_instance[ii][GENIE_BIT];
	}

	for(int ii = 0; ii < GENIE_N_INSTANCES; ++ii) {
		x[ii] = -1; y[ii] = -1;
	}
	
	bitmap_to_edges(51, a, x, y);

	for(int ii = 0 ; ii < 51; ++ii) {
		if (x[ii] != -1) 
		{
			assert(y[ii] != -1);

			score[5] -= 1.0*euclid_distance(x[ii],y[ii]);
		}
	}
}

