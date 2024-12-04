
#include <set>
#include <cassert>
#include <math.h>
#include "fitness_library.h"
#include "bitmap.cc"

/*

Implement the user defined rule functions here, they should
look like

double <function name>(const instance_t* b, const instance_t*e) {
 ...
}

*/

double tour(const instance_t* b, const instance_t*e) {

	return abs(51 - sum(b, e, [] (const instance_t* each) { return (*each)[GENIE_BIT];}));
}

double cities(const instance_t* b, const instance_t*e) {

        int x[GENIE_N_INSTANCES], y[GENIE_N_INSTANCES];
        int a[GENIE_N_INSTANCES];

        for(int ii = 0; ii < GENIE_N_INSTANCES;++ii) {
                a[ii] = b[ii][GENIE_BIT];
        }

        for(int ii = 0; ii < GENIE_N_INSTANCES; ++ii) {
                x[ii] = -1; y[ii] = -1;
        }

        bitmap_to_edges(51, a, x, y);

        vector<int> cities[51];

        for(int ii = 0 ; ii < GENIE_N_INSTANCES; ++ii) {
                if (x[ii] != -1) {
                        cities[x[ii]].push_back(y[ii]);
                        cities[y[ii]].push_back(x[ii]);
		}
        }

	int loops = 0;

	vector<int> todo;

	set<int> not_seen;

	for(int ii = 0; ii < 51;++ii) { not_seen.insert(ii); }

	while (!not_seen.empty()) {

		int start = *not_seen.begin();
		todo.push_back(start);
		not_seen.erase(start);
	
		while(!todo.empty()) {
	
			int current = todo.back(); todo.pop_back();
	
			for(vector<int>::iterator p = cities[current].begin(); p != cities[current].end(); ++p) {
				if (not_seen.find(*p) != not_seen.end()) {
					not_seen.erase(*p);
					todo.push_back(*p);
				}
			}
		}

		++loops;
	}

	return loops - 1;
}

double chain(const instance_t* b, const instance_t*e) {

	int x[GENIE_N_INSTANCES], y[GENIE_N_INSTANCES];
	int a[GENIE_N_INSTANCES];
	
	for(int ii = 0; ii < GENIE_N_INSTANCES;++ii) {
		a[ii] = b[ii][GENIE_BIT];
	}

	for(int ii = 0; ii < GENIE_N_INSTANCES; ++ii) {
		x[ii] = -1; y[ii] = -1;
	}
	
	bitmap_to_edges(51, a, x, y);

	set<int> adj[51];

	for(int ii = 0 ; ii < GENIE_N_INSTANCES ; ++ii) {
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
	
	int sum = 0;
	for(int ii = 0; ii < 51; ++ii) {
		sum += abs((int) (2 - adj[ii].size()));
	}

	return sum;
}

double euclid_distance(int c1, int c2) {

        double x1 = genie_xcoord(c1);
        double y1 = genie_ycoord(c1);

        double x2 = genie_xcoord(c2);
        double y2 = genie_ycoord(c2);

        return sqrt( (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2) );
}

double eudistance(const instance_t* b, const instance_t*e) {

	int x[GENIE_N_INSTANCES], y[GENIE_N_INSTANCES];
	int a[GENIE_N_INSTANCES];

	for(int ii = 0; ii < GENIE_N_INSTANCES;++ii) {
		a[ii] = b[ii][GENIE_BIT];
	}

	for(int ii = 0; ii < GENIE_N_INSTANCES; ++ii) {
		x[ii] = -1; y[ii] = -1;
	}
	
	bitmap_to_edges(51, a, x, y);

	double sum = 0.0;

	for(int ii = 0 ; ii < GENIE_N_INSTANCES; ++ii) {
		if (x[ii] != -1) 
		{
			assert(y[ii] != -1);

			sum += euclid_distance(x[ii],y[ii]);
		}
	}
	return sum;
}

