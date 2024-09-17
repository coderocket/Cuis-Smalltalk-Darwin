
		/* begin generated */

		int zero_count = 0;
		for(int j = 0; j < CHROMOSOME_SIZE; j++) {
			if (fit[i]->gene[j][0] == 0) zero_count++;
		}

		fit[i]->fitness -= zero_count;

		/* end generated */

