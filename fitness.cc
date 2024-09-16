#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include "genie_types.h"

using namespace std;

extern chromosome_t chromosome[];

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

void calculate_fitness() {

	for(int i = 0 ; i < POPULATION_SIZE; i++) {

		chromosome[i].fitness = 0;

#include "generated_fitness.cc"

	}
}

