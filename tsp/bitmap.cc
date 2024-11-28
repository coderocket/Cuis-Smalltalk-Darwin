#include <cassert>
#include <algorithm>
#include <vector>

using namespace std;


void make_random_tour(int n, int* x, int* y) {

	vector<int> cities;

	for(int ii = 0; ii < n ; ++ii) {
		cities.push_back(ii);
	}
	
	random_shuffle(cities.begin(), cities.end());

	for(int ii = 0;ii < n-1; ++ii) {
		x[ii] = min(cities[ii], cities[ii+1]);
		y[ii] = max(cities[ii], cities[ii+1]);
	}

	x[n-1] = min(cities[n-1], cities[0]);
	y[n-1] = max(cities[n-1], cities[0]);
}

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

n = 4

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
		else return false;
	}

	for(int ii = 0;ii < n ; ++ii) {
		if (next[ii] == -1) 
			return false;
	}

	return true;
}
