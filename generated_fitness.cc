
		/* begin generated */

		int one_count = 0;
		for(int j = 0; j < CHROMOSOME_SIZE; j++) {
			if (b->gene[j][0] == 1) one_count++;
		}

		b->fitness = one_count;
		
		/* end generated */

