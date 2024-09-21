#include <unistd.h>
#include <cassert>
#include <algorithm>
#include <iostream>
#include <thread>

using namespace std;

const int N = 100;

int b[N];

void work(int id) {

	assert(id > 0);

	chrono::milliseconds t(5000 + (rand() % 10));

	this_thread::sleep_for(t);

	int k = 0;

	while (b[k] != id) {
		while (b[k] != 0)
			++k;
		assert(k < N);
		b[k] = id;
	}
}

int main()
{
	cout << "PID = " << getpid() << endl;

	thread t[N];

	for(int i = 0; i < N; i++) {
		t[i] = thread(work, i+1);
	}

	for(int i = 0; i < N ; i++) {
		t[i].join();
	}

	for(int i = 0; i < N; i++) {
		cout << b[i] << " ";
	}
	cout << endl;

	sort(b, b+N);

	for(int i = 0; i < N; i++) {

		assert( b[i] == i+1 );
	}

	return 0;
}
