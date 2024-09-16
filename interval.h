#include <cstdlib>

struct interval_t {
	int begin;
	int end;

	interval_t(int b, int e) : begin(b) , end(e) {}

	int at_random() {
		return begin + rand() % (end - begin + 1);
	}

};

