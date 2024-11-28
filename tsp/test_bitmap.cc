#include <cassert>
#include <iostream>
#include "bitmap.h"

using namespace std;

/*

  0 1 2 3 4 5 6 7 8 9

  0 0 0 0 1 1 1 2 2 3
  1 2 3 4 2 3 4 3 4 4

  0 1 0 1 1 1 0 0 0 1 

*/


void test_bitmap() {

	const int N = 5;

	const int K = 3;

	int a[N*(N-1)/2];

	assert(edge_to_bitmap_index(N, 2, 4) == 8);
	assert(edge_to_bitmap_index(N, 1, 3) == 5);
	assert(edge_to_bitmap_index(N, 0, 3) == 2);

	for(int i =0;i < N*(N-1)/2;++i) a[i] = 0;

	a[8] = 1;
	a[5] = 1;
	a[2] = 1;

	int x[K];
	int y[K];

	bitmap_to_edges(N, a, x, y);

	assert(x[0] == 0);
	assert(y[0] == 3);

	assert(x[1] == 1);
	assert(y[1] == 3);

	assert(x[2] == 2);
	assert(y[2] == 4);

}

int main() {

	test_bitmap();

	const int N = 5;

	int x[N], y[N];

	int a[N*(N-1)/2];

	for(int ii = 0; ii < N*(N-1)/2; ++ii) {
		a[ii] = 0;
	}

	make_random_tour(N, x, y);

	assert(is_valid_tour(N, x, y) == true);

	for(int ii = 0; ii < N; ++ii) {
		int jj = edge_to_bitmap_index(N, x[ii], y[ii]);

		a[jj] = 1;
	}

	for(int ii = 0; ii < N*(N-1)/2; ++ii) {

		cout << a[ii] << " ";
	}

	cout << endl;

	return 0;
}

