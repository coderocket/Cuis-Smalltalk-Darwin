#include <climits>
#include <cmath>
#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <map>
#include <set>
#include <iostream>
#include <thread>
#include "genie_constants.h"
#include "genie_types.h"
#include "interval.h"

using namespace std;

extern chromosome_t* current;

class compare_by {
private:
	int i;
public:
	compare_by(int _i) { i = _i; }

	bool operator()(const gene_t* x, const gene_t* y) {
		return (*x)[i] < (*y)[i];
	}
};

#include "generated_tables.h"

int next(int j, gene_t* p[], int keys[], int n_keys) {

	int i = n_keys;

	while (j < CHROMOSOME_SIZE && i == n_keys) {
		i = 0;
		while (i < n_keys && j+1 < CHROMOSOME_SIZE && (*(p[j+1]))[keys[i]] == (*(p[j]))[keys[i]]) i++; 
		j++;
	}

	return j;
}

int group_by(chromosome_t* c, int keys[], int n_keys, int (*f)(gene_t** ,gene_t**)) {
	int result = 0;

	gene_t* p[CHROMOSOME_SIZE];
	
	for(int i = 0; i < CHROMOSOME_SIZE;i++)
		p[i] = &c->gene[i];

	for(int i = 0 ; i < n_keys; i++) {
		stable_sort(p,p+CHROMOSOME_SIZE, compare_by(keys[i]));
	}

	int pj = 0;
	int nj = next(0, p, keys, n_keys);

	while (pj < CHROMOSOME_SIZE) {
		result += f(p+pj, p+nj);
		pj = nj; 
		nj = next(nj, p, keys, n_keys);
	}

	return result;
}

int sum(gene_t* b, gene_t* e, int (*f)(const gene_t*)) {

	int result = 0;

	while(b != e) {
		result += f(b);
		b++;
	}

	return result;
}

int genie_sum(gene_t** b, gene_t** e, int (*f)(const gene_t*)) {

	int result = 0;

	while(b != e) {
		result += f(*b);
		b++;
	}

	return result;
}

int genie_count(gene_t** b, gene_t** e, int (*f)(const gene_t*)) {
	
	std::set<int> a_set;

	while(b != e) {
		a_set.insert(f(*b));
		b++;
	}

	return a_set.size();
}

template<typename F>
int genie_table_iterate(const multimap<array<int, 2>, interval_t> & table, int key1, int key2, F f) {
	int sum = 0;
	auto b = table.lower_bound({key1, key2});
	auto e = table.upper_bound({key1, key2});
	while (b!=e) {
		sum += f(b->second);
		++b;
	}

	return sum;
}

int genie_intersect(interval_t x, interval_t y) { 
	return x.intersect(y).length();
}

int genie_overlap(gene_t** b, gene_t** e, interval_t (*f)(const gene_t*)) {

	int result = 0;

	while(b != e) {
		gene_t** p = b+1;
		while(p != e) {
			result += f(*b).intersect(f(*p)).length();
			p++;
		}
		b++;
	}

	return result;

}

int genie_maxgap(gene_t** b, gene_t** e, interval_t (*f)(const gene_t*)) { 

	vector<interval_t> interval;
	interval.reserve(e-b); 

	while(b !=e ) {
		interval.push_back(f(*b));
		b++;
	}

	sort(interval.begin(), interval.end(), [](const interval_t& left, const interval_t& right) { return left.begin < right.begin; });

	int maxgap = 0;

	for(int i = 0 ; i < interval.size() - 1; i++) {
		if (interval[i].end < interval[i+1].begin)
			maxgap = max(maxgap, interval[i+1].begin - interval[i].end);
	}

	return maxgap;
}

int genie_mingap(gene_t** b, gene_t** e, interval_t (*f)(const gene_t*)) {

	vector<interval_t> interval;
	interval.reserve(e-b); 

	while(b !=e ) {
		interval.push_back(f(*b));
		b++;
	}

	sort(interval.begin(), interval.end(), [](const interval_t& left, const interval_t& right) { return left.begin < right.begin; });

	int mingap = INT_MAX;

	for(int i = 0 ; i < interval.size() - 1; i++) {
		if (interval[i].end <= interval[i+1].begin)
			mingap = min(mingap, interval[i+1].begin - interval[i].end);
	}

	return mingap;
}

void calculate_num_offspring(chromosome_t* b, chromosome_t* e) {

extern int total_fitness;

	while(b != e) {
		b->num_offspring = (((double)b->fitness)/total_fitness)*POPULATION_SIZE;
		++b;
	}
}

void calculate_fitness(chromosome_t* b, chromosome_t* e) {

extern int total_fitness;

	total_fitness = 0;

	while(b != e) {

		b->fitness = 0;

#include "generated_fitness.cc"

		total_fitness += b->fitness;

		++b;
	}

	if (total_fitness <= 0) throw runtime_error("fitness too law, aborting.");

}

