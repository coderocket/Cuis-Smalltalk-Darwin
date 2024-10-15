#ifdef __APPLE__
#include <random>
typedef std::mt19937 random_number_generator;
#else
#include <stdlib.h>

class random_number_generator {

public:
	random_number_generator() {

		a_random_data.state = NULL;
		
		initstate_r(random(), random_buffer, 64, &a_random_data);
	}

	int operator()() {
		int result;
		random_r(&a_random_data, &result);
		return result;
	}

	static int max() { return RAND_MAX; }

	typedef int result_type;
private:

	struct random_data a_random_data;
	char random_buffer[64];
};
#endif 
