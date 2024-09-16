
		/* begin generated */
#if 0
		{
			int keys[] = { DAY , TEACHER };

			fit[i]->fitness -= group_by(fit[i], keys, 2, [](gene_t** b, gene_t** e) { return max(0, sum(b,e,DURATION) - 6); }); 
		}
#endif 

		int zero_count = 0;
		for(int j = 0; j < CHROMOSOME_SIZE; j++) {
			if (fit[i]->gene[j][0] == 0) zero_count++;
		}

		fit[i]->fitness -= zero_count;

		/* end generated */

