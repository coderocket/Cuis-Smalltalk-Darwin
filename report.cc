#include <math.h>
#include <unistd.h>
#include <sys/time.h>
#include <cassert>
#include <algorithm>
#include <iostream>
#include <fstream>
#include <sstream>
#include <array>
#include <vector>
#include <map>
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

chromosome_t* best(chromosome_t* b, chromosome_t* e) {

	chromosome_t* best = b;

	while(b != e) {
		if (b->fitness > best->fitness) 
			best = b;	
		++b;
	}

	return best;
}

chromosome_t* worst(chromosome_t* b, chromosome_t* e) {

	chromosome_t* worst = b;

	while(b != e) {
		if (b->fitness < worst->fitness) 
			worst = b;	
		++b;
	}

	return worst;
}

void report_progress(chromosome_t* b, chromosome_t* e) {

	chromosome_t* p = best(b, e); 
	chromosome_t* q = worst(b, e);

	timeval now;
	gettimeofday(&now, 0);

	tm* today = localtime(&now.tv_sec);

	int hh, mm, ss , ms;

	hh = today->tm_hour;
	mm = today->tm_min;
	ss = today->tm_sec;
	ms = now.tv_usec / 1000;

	stringstream stream;

	stream << hh << ":" << mm << ":" << ss << "." << ms << " " << (p)->fitness << " " << (q)->fitness; 

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

void report_gene_histogram(chromosome_t* b, chromosome_t* e) {

	map<gene_t, int> count;

	while (b!=e) {
		for(int i = 0; i < CHROMOSOME_SIZE;i++) {
			++count[b->gene[i]];
		}
		++b;
	}

	cout << count.size() << endl;
/*
	for(map<gene_t, int>::iterator p = count.begin(); p != count.end(); ++p) {
		cout << p->first[GENIE_ROOM] << "," << p->first[GENIE_HOUR] << "," << p->first[GENIE_DAY] << "," << p->first[GENIE_LECTURER] << "," << p->first[GENIE_MODULE] << "," << p->first[GENIE_FRAME] << ":" << p->second << endl;
	}
	*/
}

void report_population_fitness_histogram(chromosome_t* b, chromosome_t* e) {

	map<int, int> count;

	while (b != e) {
		++count[b->fitness];
		++b;
	}

	for(map<int, int>::iterator p = count.begin(); p != count.end(); ++p) {
		cout << p->first << " : " << p->second << endl;
	}
	
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

void report_similarity_score(chromosome_t* b, chromosome_t* e) {

	size_t n = e - b;
	double similarity_score = 0.0;

	gene_t x[CHROMOSOME_SIZE];
	gene_t y[CHROMOSOME_SIZE];

	while(b!=e) {

		chromosome_t* p = b+1;

		copy(b->gene, b->gene+CHROMOSOME_SIZE, y);
		sort(y,y+CHROMOSOME_SIZE, [](const gene_t& u, const gene_t& v) { return u[GENIE_LOCUS] < v[GENIE_LOCUS]; });

		while(p != e) {

			copy(p->gene, p->gene+CHROMOSOME_SIZE, x);

			sort(x,x+CHROMOSOME_SIZE, [](const gene_t& u, const gene_t& v) { return u[GENIE_LOCUS] < v[GENIE_LOCUS]; });

			for(int i = 0 ; i < CHROMOSOME_SIZE; i++) {

				for (int k = 0 ; k < GENE_SIZE; k++) {
					double delta = x[i][k] - y[i][k];
					similarity_score += delta*delta;
				}
			}
			++p;
		}
		++b;
	}

	cout << "similarity score is " << sqrt(similarity_score) / n << endl;
}
