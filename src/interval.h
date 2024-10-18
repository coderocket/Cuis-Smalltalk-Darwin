#include <cstdlib>

struct interval_t {
	int begin;
	int end;

	interval_t(int b, int e) : begin(b) , end(e) {}

	int at_random(); 

	bool contains(int x) {
		return begin <= x && x <= end;
	}

	interval_t intersect(interval_t an_interval) {
		
		return interval_t(std::max(begin, an_interval.begin), std::min(end, an_interval.end));
	}

	int length() { return std::max(end - begin,0); }

};

