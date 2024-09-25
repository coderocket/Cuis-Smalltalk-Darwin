#include <unistd.h>
#include <sys/time.h>
#include <cassert>
#include <algorithm>
#include <iostream>
#include <fstream>
#include <sstream>
#include <array>
#include <vector>
#include <string>
#include "genie_constants.h"
#include "genie_types.h"

using namespace std;

extern bool use_fifo;
extern string fifo_name;

extern int actual_population_size; 
extern int total_fitness; 

using std::max;
using std::min;
using std::cout;
using std::endl;

vector<string> history;

void report_progress(chromosome_t* b, chromosome_t* e) {

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

	if (use_fifo) {
		history.push_back(stream.str());

		fstream pipe(fifo_name, ios::out);	

		for(int i = 0;i < history.size();i++) {
			pipe << history[i] << '\n';
		}
		pipe << flush;
	} 
	else {
		cout << stream.str() << endl;
	}

}

void report_solution(chromosome_t* c) {

	cout << " fitness = " << (c)->fitness << endl ;

	for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
		cout << "(" << c->gene[j][GENIE_LOCUS] << ", ";
		for(int k = 0; k < GENE_SIZE; k++) {
			cout << (c)->gene[j][k] << " ";
		}
		cout << ")|";
	}

	cout << endl;

}

void json_write_solution(chromosome_t* c, ostream& out) {

	out << "[" << '\n';

	for(int j = 0 ; j < CHROMOSOME_SIZE ;j++) {
		out << "[" << c->gene[j][GENIE_LOCUS] << ", ";
		out << "[";
		int k;
		for(k=0; k < GENE_SIZE - 1; k++) {
			out << (c)->gene[j][k] << ",";
		}
		out << c->gene[j][k];

		out << "] ]";

		if (j < CHROMOSOME_SIZE - 1)
			out << ", ";
	}

	out << "]" << endl;

}
