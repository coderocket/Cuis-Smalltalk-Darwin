#include <cstdlib>
#include <cassert>
#include <algorithm>
#include <functional>
#include <iostream>
#include "interval.h"

using namespace std;

/* begin generated */

const double MUTATION_PROBABILITY = 0.02 ;
const int N_OFFSPRING = 4 ;
const int POPULATION_SIZE = 10; // number individuals (chromosomes)
const int CHROMOSOME_SIZE = 5; // number of genes in a chromosome
const int GENE_SIZE = 5; 

const int ROOM = 0;
const int DAY = 1;
const int HOUR = 2;
const int DURATION = 3;
const int TEACHER = 4;

/* end generated */

typedef int gene_t[GENE_SIZE] ;

struct chromosome_t {
	gene_t gene[CHROMOSOME_SIZE];
	int fitness;
};

chromosome_t chromosome[POPULATION_SIZE+N_OFFSPRING];

void mutate(gene_t& a_gene) {

	/* begin generated */

	a_gene[ROOM] = interval_t(1,3).at_random();
	a_gene[DAY] = interval_t(1,2).at_random();
	a_gene[HOUR] = interval_t(8,17).at_random();
	a_gene[TEACHER] = interval_t(1,2).at_random();
	a_gene[DURATION] = interval_t(2,3).at_random();

	/* end generated */
}

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

		/* begin generated */

		{
			int keys[] = { DAY , TEACHER };

			chromosome[i].fitness -= group_by(&chromosome[i], keys, 2, [](gene_t** b, gene_t** e) { return max(0, sum(b,e,DURATION) - 6); }); 
		}

		/* end generated */
	}
}

void mutate(double mp) {

	double p = rand();

	for(int i = 0 ; i < POPULATION_SIZE; i++) {
		if (p / RAND_MAX < mp)
			for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
				mutate(chromosome[i].gene[j]);
			}
	}
}

void setup() {

	mutate(1.0);

}

void report() {

	for(int i = 0; i < POPULATION_SIZE; i++) {
		cout << chromosome[i].fitness << ": ";
		for(int j = 0 ; j < CHROMOSOME_SIZE;j++) {
			for(int k = 0; k < GENE_SIZE; k++) {
				cout << chromosome[i].gene[j][k] << " ";
			}
			cout << " | ";
		}
		cout << endl;
	}
}

int main() {

	setup();

	calculate_fitness();

	report();

	return 0;
}

