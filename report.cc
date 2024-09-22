#include <sys/time.h>
#include <cassert>
#include <algorithm>
#include <iostream>
#include <sstream>
#include <array>
#include <vector>
#include "genie_constants.h"
#include "genie_types.h"

extern int actual_population_size; 

extern int total_fitness; 

using namespace std;

using std::max;
using std::min;
using std::cout;
using std::endl;

vector<string> history;

void report(chromosome_t* b, chromosome_t* e) {

	chromosome_t* p = max(b, e, [](chromosome_t* x, chromosome_t* y) { return (x)->fitness < (y)->fitness; });

	timeval now;
	gettimeofday(&now, 0);

	tm* today = localtime(&now.tv_sec);

	int hh, mm, ss , ms;

	hh = today->tm_hour;
	mm = today->tm_min;
	ss = today->tm_sec;
	ms = now.tv_usec / 1000;

	stringstream stream;

	stream << hh << ":" << mm << ":" << ss << "." << ms << " " << (p)->fitness; 
	history.push_back(stream.str());

	for(int i = 0;i < history.size();i++) {
		cout << history[i] << '\n';
	}
	cout << "e" << endl;

#if 0
	cout << "population size = " << e-b << " " ;

	chromosome_t* p = max(b, e, [](chromosome_t* x, chromosome_t* y) { return (x)->fitness < (y)->fitness; });

	chromosome_t* q = min(b, e, [](chromosome_t* x, chromosome_t* y) { return (x)->fitness < (y)->fitness; });

	cout << " max = " << (p)->fitness << " min = " << (q)->fitness << " ";

	cout << total_fitness / actual_population_size << endl;

	for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
		for(int k = 0; k < GENE_SIZE; k++) {
			cout << (p)->gene[j][k] << " ";
		}
		cout << "";
	}

	cout << endl;
#endif
}

