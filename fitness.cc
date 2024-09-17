#include <climits>
#include <cmath>
#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include <thread>
#include "genie_types.h"

using namespace std;

extern chromosome_t* fit[];

class compare_by {
private:
	int i;
public:
	compare_by(int _i) { i = _i; }

	bool operator()(const gene_t* x, const gene_t* y) {
		return (*x)[i] < (*y)[i];
	}
};

int next(int j, gene_t* p[], int keys[], int n_keys) {

	int i = n_keys;

	while (j < CHROMOSOME_SIZE && i == n_keys) {
		i = 0;
		while (i < 2 && j+1 < CHROMOSOME_SIZE && (*(p[j+1]))[keys[i]] == (*(p[j]))[keys[i]]) i++; 
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

int sum(gene_t** b, gene_t** e, int index) {

	int result = 0;

	while(b != e) {
		result += (**b)[index];
		b++;
	}

	return result;
}

int overlap(gene_t** b, gene_t** e, int i_begin, int i_end) {

	int result = 0;

	while(b != e) {
		gene_t** p = b+1;
		while(p != e) {
			result += interval_t((**b)[i_begin], (**b)[i_end]).intersect(interval_t((**p)[i_begin], (**p)[i_end])).length();
			p++;
		}
		b++;
	}

	return result;

}

int maxgap(gene_t** b, gene_t** e, int i_begin, int i_end) {

	vector<interval_t> interval;
	interval.reserve(e-b); 

	while(b !=e ) {
		interval.push_back(interval_t((**b)[i_begin], (**b)[i_end]));	
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

int mingap(gene_t** b, gene_t** e, int i_begin, int i_end) {

	vector<interval_t> interval;
	interval.reserve(e-b); 

	while(b !=e ) {
		interval.push_back(interval_t((**b)[i_begin], (**b)[i_end]));	
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

void calculate_fitness(int b, int e) {

	thread t[N_THREAD];

	for(int k = 0 ; k < N_THREAD; k++) {

		t[k] = thread([b,e,k]() {
			for(int i = b+k ; i < e; i+=N_THREAD) {

				fit[i]->fitness = 0;

#include "generated_fitness.cc"

			} 
		});
	}

	for(int k = 0; k < N_THREAD; k++) {
		t[k].join();
	}
}

