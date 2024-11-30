
void generate_a_random_tour(instance_t* b, instance_t* e, random_number_generator& a_random_number_generator) 
{
	vector<int> cities(51);
	vector<int> tour(51);
	int x[51], y[51];
	
	for(int ii = 0; ii < 51; ++ii) {
		cities[ii] = ii;
	}
	
	for(int ii = 0; ii < 51 ; ++ii) {
		int jj = a_random_number_generator() % cities.size();
		tour[ii] = cities[jj];
		cities[jj] = cities.back();
		cities.pop_back();
	}
	
	for(int ii = 0 ; ii < 50; ++ii) {
		x[ii] = min(tour[ii], tour[ii+1]);
		y[ii] = max(tour[ii], tour[ii+1]);
	}
	
	x[50] = min(tour[50], tour[0]);
	y[50] = max(tour[50], tour[0]);
	
	instance_t* p = b;
	while(p != e) {
		(*p)[GENIE_BIT] = 0;
		++p;
	}

	for(int ii=0;ii<51;++ii) {
		int jj = edge_to_bitmap_index(51,x[ii],y[ii]);
		b[jj][GENIE_BIT] = 1;
	}

/*
	int v[51], u[51];

	for(int ii=0;ii<51;++ii) {
		v[ii] = -1;
		u[ii] = -1;
	}
	int bitmap[GENIE_N_INSTANCES];

	for(int ii=0;ii<GENIE_N_INSTANCES;++ii) {
		bitmap[ii] = b[ii][GENIE_BIT];
	}

	bitmap_to_edges(51, bitmap, u, v);

	assert(is_valid_tour(51,u,v) == true);	
*/
}

void generate_a_random_tour(chromosome_t* b, chromosome_t* e)
{
	instance_t an_instance[GENIE_N_INSTANCES];

	random_number_generator a_random_number_generator;

	for(; b != e ; ++b) {
		chromosome_to_instance(b, an_instance);
		generate_a_random_tour(an_instance, an_instance+GENIE_N_INSTANCES, a_random_number_generator);
		instance_to_chromosome(an_instance, b);
        }
}
