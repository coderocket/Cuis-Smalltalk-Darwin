#include <config.h>
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

#include "generated_tables.h"
#include "generated_functions.h"

void prepare_score(const chromosome_t* cc, array<genie_rule_t, GENIE_N_RULES>& rules) {

	instance_t an_instance[GENIE_N_INSTANCES];

	chromosome_to_instance(cc, an_instance);
	compute_instance_keys(an_instance);

#include "generated_fitness.cc"

}

void report_score(const chromosome_t* cc, ostream& out) {

	array<genie_rule_t,GENIE_N_RULES> rules;

	prepare_score(cc, rules);

	for(int jj = 0 ; jj < GENIE_N_RULES; ++jj) {

		out << rules[jj].score << " ";
	}
}

void report_score_gnuplot(chromosome_t* b, chromosome_t* e, ostream& out) {

	chromosome_t* cc = best(b, e); 

	array<genie_rule_t,GENIE_N_RULES> rules;

	prepare_score(cc, rules);

	for(int jj = 1 ; jj < GENIE_N_RULES; ++jj) { // don't print the large bonus in the first score array

		out << jj << ' ' << rules[jj].score << '\n';
	}

	out << endl;
}

static stringstream progress_stream;

void report_progress(chromosome_t* b, chromosome_t* e, ostream& out) {

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
	
	
	progress_stream << hh << ":" << mm << ":" << ss << "." << ms << " " << (p)->fitness << " " << (q)->fitness << " \t"; 
	
	report_score(p, progress_stream);
	
	progress_stream << endl;

	out << progress_stream.str() << endl;
}

void report(chromosome_t* b, chromosome_t* e) {

	if (use_fifo) {
		{
			fstream progress_pipe(string("progress.") + fifo_name, ios::out);
			report_progress(b,e,progress_pipe);
		}
		{
			fstream score_pipe(string("score.") + fifo_name, ios::out);
			report_score_gnuplot(b, e, score_pipe);
		}
	} else {
		progress_stream.str("");
		report_progress(b,e, cout);
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

void json_write_score(const array<genie_rule_t, GENIE_N_RULES>& rules, ostream& out) {

	out << "[";

	for(int jj = 0 ; jj < GENIE_N_RULES-1; ++jj) {

		if (rules[jj].score <=0) 
			out << "[" << jj << "," << rules[jj].location << "," << rules[jj].score << "], ";
	}

	if (rules[GENIE_N_RULES-1].score <=0)
		out << "[" << GENIE_N_RULES-1 << "," << rules[GENIE_N_RULES-1].location << "," << rules[GENIE_N_RULES-1].score << "]";
	out << "]";
}

struct genie_solution_t {
	array<genie_rule_t, GENIE_N_RULES> rules;
	const chromosome_t* cc;
};

bool operator<(const genie_solution_t& x, const genie_solution_t& y) {
	return accumulate(x.rules.begin(), x.rules.end(), 0, [](int acc, genie_rule_t v) { return acc + v.score * v.weight ;}) > accumulate(y.rules.begin(), y.rules.end(),0, [](int acc, genie_rule_t v) { return acc + v.score * v.weight; });
}

void json_write_solution_and_score(const genie_solution_t& q, ostream& out) {

	out << "{";
	out << "\n\"score\"" << ":"; 
	json_write_score(q.rules, out);
	out << ",\n\"solution\"" << ":";
	json_write_solution(q.cc, out);
	out << "}";
}

void json_write_best_unique_solutions(chromosome_t* b, chromosome_t* e, size_t k, ostream& out) {


	multiset< genie_solution_t > solutions;

	for(const chromosome_t* p = b; p != e; ++p) {

		genie_solution_t s;
		s.cc = p;
		prepare_score(p, s.rules);
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
