#include <map>
#include <array>
#include <cassert>

#include "interval.h"

std::multimap<std::array<int,2>, interval_t> genie_timetable { 
	{ {1,1}, interval_t(8,12) } ,
	{ {1,1}, interval_t(17,19) } ,
	{ {1,2}, interval_t(9,12) } ,
	{ {1,2}, interval_t(15,20) } ,
	{ {1,2}, interval_t(20,22) } 
};

int main() {
	
	int key1 = 1;
	int key2 = 1;

	auto b = genie_timetable.lower_bound({key1,key2});
	auto e = genie_timetable.upper_bound({1,1});

	int sum = 0;

	while(b != e) {
		sum += b->second.length();
		++b;
	}

	assert(sum == 6);

	sum = 0;

	b = genie_timetable.lower_bound({1,2});
	e = genie_timetable.upper_bound({1,2});

	while(b != e) {
		sum += b->second.length();
		++b;
	}

	assert(sum == 10);

	return 0;
}
