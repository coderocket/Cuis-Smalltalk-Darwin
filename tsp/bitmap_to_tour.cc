#include <iostream>
#include <iterator>
#include <vector>

using namespace std;

void bitmap_to_edges(int , const int*, int*, int*);

const int N = 51;

int main() {

	int x[N*(N-1)/2], y[N*(N-1)/2];

	int bitmap[N*(N-1)/2];

	copy(istream_iterator<int>(cin), istream_iterator<int>(), bitmap);

	bitmap_to_edges(N, bitmap, x, y);

	for(int ii = 0 ; ii < N; ++ii) {
		cout << x[ii] << " " << y[ii] << endl;	
	}

	return 0;
}
