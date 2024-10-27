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
#include <set>
#include <numeric>
#include <string>
#include "genie_constants.h"
#include "genie_types.h"
#include "chromo.h"
#include "interval.h"
#include "fitness_library.h"

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

void prepare_score(const chromosome_t* cc, array<int, GENIE_N_RULES>& score, array<int, GENIE_N_RULES>& rule_location) {

	instance_t an_instance[GENIE_N_INSTANCES];

	chromosome_to_instance(cc, an_instance);
	compute_instance_keys(an_instance);

#include "generated_fitness.cc"

}

void report_score(const chromosome_t* cc, ostream& out) {

	array<int,GENIE_N_RULES> rule_location;
	array<int,GENIE_N_RULES> score;

	prepare_score(cc, score, rule_location);

	for(int jj = 0 ; jj < GENIE_N_RULES; ++jj) {

		out << score[jj] << " ";
	}
}

void report_score_gnuplot(const chromosome_t* cc, ostream& out) {

	array<int,GENIE_N_RULES> rule_location;
	array<int, GENIE_N_RULES> score;

	prepare_score(cc, score, rule_location);

	for(int jj = 1 ; jj < GENIE_N_RULES; ++jj) { // don't print the large bonus in the first score array

		out << jj << ' ' << score[jj] << '\n';
	}

	out << endl;
}

void report_progress(chromosome_t* b, chromosome_t* e) {

	chromosome_t* p = best(b, e); 

	if (use_fifo) {
		fstream pipe(fifo_name, ios::out);
		report_score_gnuplot(p, pipe);
		pipe << flush;
	} else {
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
	
		stream << hh << ":" << mm << ":" << ss << "." << ms << " " << (p)->fitness << " " << (q)->fitness << " \t"; 
	
		report_score(p, stream);
	
		stream << endl;

		cout << stream.str() << endl;
	}
}

void report_solution(chromosome_t* c) {

	cout << " fitness = " << (c)->fitness << endl ;
}

void json_write_solution(const chromosome_t* c, ostream& out) {

	instance_t an_instance[GENIE_N_INSTANCES];

	chromosome_to_instance(c, an_instance);

	compute_instance_keys(an_instance);

	out << "[" << '\n';

	for(int j = 0 ; j < GENIE_N_INSTANCES ;j++) {
		out << "[" << j << ", ";
		out << "[";
		int k;
		for(k=0; k < INSTANCE_SIZE - 1; k++) {
			out << an_instance[j][k] << ", ";
		}
		out << an_instance[j][k];

		out << "] ]";

		if (j < GENIE_N_INSTANCES - 1)
			out << ",\n";
	}

	out << "]" << endl;
}

void json_write_score(const array<int, GENIE_N_RULES>& score, const array<int, GENIE_N_RULES>& rule_location, ostream& out) {

	out << "[";

	for(int jj = 0 ; jj < GENIE_N_RULES-1; ++jj) {

		if (score[jj] <=0) 
			out << "[" << jj << "," << rule_location[jj] << "," << score[jj] << "], ";
	}

	if (score[GENIE_N_RULES-1] <=0)
		out << "[" << GENIE_N_RULES-1 << "," << rule_location[GENIE_N_RULES-1] << "," << score[GENIE_N_RULES-1] << "]";
	out << "]";
}

struct genie_solution_t {
	array<int, GENIE_N_RULES> score;
	array<int, GENIE_N_RULES> rule_location;
	const chromosome_t* cc;
};

bool operator<(const genie_solution_t& x, const genie_solution_t& y) {
	return accumulate(x.score.begin(), x.score.end(), 0) > accumulate(y.score.begin(), y.score.end(),0);
}

void json_write_solution_and_score(const genie_solution_t& q, ostream& out) {

	out << "{";
	out << "\n\"score\"" << ":"; 
	json_write_score(q.score, q.rule_location, out);
	out << ",\n\"solution\"" << ":";
	json_write_solution(q.cc, out);
	out << "}";
}

void json_write_best_unique_solutions(chromosome_t* b, chromosome_t* e, size_t k, ostream& out) {


	set< genie_solution_t > solutions;

	for(const chromosome_t* p = b; p != e; ++p) {

		genie_solution_t s;
		s.cc = p;
		prepare_score(p, s.score, s.rule_location);
		solutions.insert(s);
	}

	size_t end = min(k, solutions.size());

	set<genie_solution_t>::const_iterator q = solutions.begin(); 

	size_t index = 0;

	out << "\"solutions\"" << ":" << "[";

	while (index < end - 1) {

		json_write_solution_and_score(*q, out);
		out << ",\n";
		++q;
		++index;
	}
	json_write_solution_and_score(*q, out);

	out << "]\n";
}

void json_write_header(ostream& out) {

	out << "\"problem\"" << ":" << "\"" << GENIE_PROBLEM_NAME << "\"";
}

void json_write_footer(ostream& out) {
	out << "\n";
}

void json_write_results(chromosome_t* b, chromosome_t* e, size_t k, ostream& out) {
	out << "{\n";
	json_write_header(out);
	out << ",\n";
	json_write_best_unique_solutions(b, e, k, out);
	json_write_footer(out);
	out << "}" << endl;
}
