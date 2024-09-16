
	/* begin generated */

#if 0
	a_gene[ROOM] = interval_t(1,3).at_random();
	a_gene[DAY] = interval_t(1,2).at_random();
	a_gene[HOUR] = interval_t(8,17).at_random();
	a_gene[TEACHER] = interval_t(1,2).at_random();
	a_gene[DURATION] = interval_t(2,3).at_random();
#endif 
	/* end generated */

	if (random() % 100 < 5)
		a_gene[0] = 1 - a_gene[0];

