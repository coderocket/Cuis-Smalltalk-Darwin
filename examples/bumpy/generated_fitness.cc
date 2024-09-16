
	/* begin generated */

	for(int j = 0 ; j < CHROMOSOME_SIZE; j++) {

		double x = fit[i]->gene[j][X];
		double y = fit[i]->gene[j][Y];

		fit[i]-> fitness -= x * sin(4*x) + 1.1 * y*sin(2*y);
	}

	/* end generated */

