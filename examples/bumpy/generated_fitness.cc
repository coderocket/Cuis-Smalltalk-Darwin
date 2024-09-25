
	/* begin generated */
	
	long u=0,v=0; 

	for(int j = 0 ; j < CHROMOSOME_SIZE / 2; j++) {
		u += b->gene[j][BIT];
		u *= 2;
	}

	for(int j = CHROMOSOME_SIZE/2 ; j < CHROMOSOME_SIZE ; j++) {
		v += b->gene[j][BIT];
		v *= 2;
	}

	double x = (double)u/65536 - 0.5;
	double y = (double)v/65536 - 0.5;

	double result = fabs(x * sin(4*x) + 1.1 * y*sin(2*y));

	b->fitness = 128*1024 - result*32768;

	/* end generated */

