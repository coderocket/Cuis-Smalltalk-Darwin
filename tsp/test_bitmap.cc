#include <iostream>
#include <array>
#include <sstream>
#include <stdexcept>

using namespace std;

void bitmap_to_edges(int , const int*, int*, int*);

#include "generated_functions.cc"

int main() {

	int a[10] = { 0,1,1,0,0,1,1,0,1,0 };

	int x[10], y[10];

	bitmap_to_edges(5, a, x, y);

	int distance = 0;

	for(int ii = 0 ; ii < 5; ++ii) {
		distance += euclid_distance(x[ii], y[ii]);
	}

	cout << distance << endl;

	return 0;
}
