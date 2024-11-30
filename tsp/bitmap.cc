#include <cassert>
#include <algorithm>
#include <vector>
#include <set>

using namespace std;

/* 

n = 4

  0 1 2 3 4 5 6 7 8 9

x 0 0 0 0 1 1 1 2 2 3
y 1 2 3 4 2 3 4 3 4 4


Given an integer n and a sequence a of n*(n-1)/2 bits calculate the edges
they encode

*/

void bitmap_to_edges(int n, const int* a, int* x , int* y) {
	
	int k = 0;

	while(k != n) {
		for(int i = k+1 ; i < n; ++i) {
			if (*a == 1) {
				*x = k;
				*y = i;
				++x; ++y;
			}
			++a;
		}
		++k;
	}
}

/* 

n = 5

  0 1 2 3 4 5 6 7 8 9

x 0 0 0 0 1 1 1 2 2 3
y 1 2 3 4 2 3 4 3 4 4


Given an integer n, an integer x, and an integer y, calculate the index
position in the bitmap.

We assume that 0 <= x < y < n 

*/

int edge_to_bitmap_index(int n, const int x, const int y) {

	return (n-1)*n/2 - (n-1-x)*(n-x)/2 + y - x - 1 ;
}

bool is_valid_tour(int n, int* x, int* y) {

	vector<int> next(n);
	vector<int> prev(n);

	for(int ii = 0 ; ii < n; ++ii) {
		next[ii] = -1;
		prev[ii] = -1;
	}

	for(int ii = 0; ii < n ; ++ii) {
		if (next[x[ii]] == -1 && prev[y[ii]] == -1) {
			next[x[ii]] = y[ii];
			prev[y[ii]] = x[ii];
		} 
		else if (next[y[ii]] == -1 && prev[x[ii]] == -1) {
			next[y[ii]] = x[ii];
			prev[x[ii]] = y[ii];
		}
		else {
			return false;
		}
	}

	for(int ii = 0;ii < n ; ++ii) {
		if (next[ii] == -1) {
			return false;
		}
	}

	return true;
}

void fix_tour(int n, int* x, int* y) {

	assert(n > 0);

	vector<int> u(n);
	vector<int> v(n);

	/* the edges of the chain */

	int b;
	int e;
	set<int> cities;

	u[0] = x[0];
	v[0] = y[0];
	b = x[0];
	e = y[0];
	cities.insert(x[0]);
	cities.insert(y[0]);

	int i = 1;
	int j = 1;
	while (i < n) {
		if (x[i] == b && cities.find(y[i]) == cities.end()) {
			u[j] = x[i];
			v[j] = y[i];
			b = y[i];
			cities.insert(y[i]);
			++j;
		} else if (y[i] == b && cities.find(x[i]) == cities.end()) {
			u[j] = x[i];
			v[j] = y[i];
			b = x[i];
			cities.insert(x[i]);
			++j;
		} else if (x[i] == e && cities.find(y[i]) == cities.end()) {
			u[j] = x[i];
			v[j] = y[i];
			e = y[i];
			cities.insert(y[i]);
			++j;
		} else if (y[i] == e && cities.find(x[i]) == cities.end()) {
			u[j] = x[i];
			v[j] = y[i];
			e = x[i];
			cities.insert(x[i]);
			++j;
		} else if (cities.find(x[i]) != cities.end() && cities.find(y[i]) == cities.end()) {
			u[j] = b;
			v[j] = y[i];
			b = y[i];
			cities.insert(y[i]);
			++j;
		} else if (cities.find(y[i]) != cities.end() && cities.find(x[i]) == cities.end()) {
			u[j] = x[i];
			v[j] = e;
			e = x[i];
			cities.insert(y[i]);
			++j;
		} else if (cities.size() == n) { 
			u[j] = min(b,e);
			v[j] = max(b,e);
			++j;
		}
		++i;
	}
}

