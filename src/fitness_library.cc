
class compare_by {
private:
	int i;
public:
	compare_by(int _i) { i = _i; }

	bool operator()(const instance_t* x, const instance_t* y) {
		return (*x)[i] < (*y)[i];
	}
};

int next(int j, instance_t* p[], int keys[], int n_keys) {

	int i = n_keys;

	while (j < GENIE_N_INSTANCES && i == n_keys) {
		i = 0;
		while (i < n_keys && j+1 < GENIE_N_INSTANCES && (*(p[j+1]))[keys[i]] == (*(p[j]))[keys[i]]) i++; 
		j++;
	}

	return j;
}

int group_by(instance_t* b, instance_t* e, int keys[], int n_keys, int (*f)(instance_t** ,instance_t**)) {
	int result = 0;

	instance_t* p[e-b];
	
	for(int i = 0; i < e-b;i++)
		p[i] = &b[i];

	for(int i = 0 ; i < n_keys; i++) {
		stable_sort(p,p+(e-b), compare_by(keys[i]));
	}

	int pj = 0;
	int nj = next(0, p, keys, n_keys);

	while (pj < (e-b)) {
		result += f(p+pj, p+nj);
		pj = nj; 
		nj = next(nj, p, keys, n_keys);
	}

	return result;
}

int sum(instance_t* b, instance_t* e, int (*f)(const instance_t*)) {

	int result = 0;

	while(b != e) {
		result += f(b);
		b++;
	}

	return result;
}

int genie_sum(instance_t** b, instance_t** e, int (*f)(const instance_t*)) {

	int result = 0;

	while(b != e) {
		result += f(*b);
		b++;
	}

	return result;
}

int genie_count(instance_t** b, instance_t** e, int (*f)(const instance_t*)) {
	
	std::set<int> a_set;

	while(b != e) {
		a_set.insert(f(*b));
		b++;
	}

	return a_set.size();
}

int genie_intersect(interval_t x, interval_t y) { 
	return x.intersect(y).length();
}

int genie_overlap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) {

	int result = 0;

	while(b != e) {
		instance_t** p = b+1;
		while(p != e) {
			result += f(*b).intersect(f(*p)).length();
			p++;
		}
		b++;
	}

	return result;

}

int genie_maxgap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) { 

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

int genie_mingap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) {

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

