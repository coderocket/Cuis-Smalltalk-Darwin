#include <cassert>
#include <algorithm>
#include <vector>
#include <iostream>
#include "generated_constants.h"

using namespace std;

int exprand(int z);

int seed = 7;

int main() {

	vector<int> result;

	srand(seed);

	for(int i = 0; i < 100; i++) {
		result.push_back(exprand(80)); 
	}

	sort(result.begin(), result.end());

	for(int i = 0; i < 100; i++) {
		cout << result[i] << " ";
	}
	cout << endl;

	return 0;
}
