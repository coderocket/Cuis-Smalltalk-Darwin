{ int keys[] = {GENIE_DAY, GENIE_LECTURER}; 

b->fitness += group_by(b, keys,2,[](gene_t** b, gene_t** e) 
	{ return  ( max ( (  ( ( genie_sum(b,e,[](const gene_t* each) { return  ( *each ) [ GENIE_DURATION ] ; }) ) - ( 6 ) )  ) , ( 0 ) ) ) ; }); }
{ int keys[] = {GENIE_DAY, GENIE_LECTURER}; 

b->fitness += group_by(b, keys,2,[](gene_t** b, gene_t** e) 
	{ return  ( max ( (  ( ( genie_maxgap(b,e,[](const gene_t* each) { return  interval_t (  ( *each ) [ GENIE_HOUR ]  ,  (  ( *each ) [ GENIE_HOUR ]  ) + (  ( *each ) [ GENIE_DURATION ]  )  ) ; }) ) - ( 3 ) )  ) , ( 0 ) ) ) ; }); }
{ int keys[] = {GENIE_DAY, GENIE_LECTURER}; 

b->fitness += group_by(b, keys,2,[](gene_t** b, gene_t** e) 
	{ return  ( max ( (  ( ( 1 ) - ( genie_mingap(b,e,[](const gene_t* each) { return  interval_t (  ( *each ) [ GENIE_HOUR ]  ,  (  ( *each ) [ GENIE_HOUR ]  ) + (  ( *each ) [ GENIE_DURATION ]  )  ) ; }) ) )  ) , ( 0 ) ) ) ; }); }
{ int keys[] = {GENIE_DAY, GENIE_ROOM}; 

b->fitness += group_by(b, keys,2,[](gene_t** b, gene_t** e) 
	{ return genie_overlap(b,e,[](const gene_t* each) { return  interval_t (  ( *each ) [ GENIE_HOUR ]  ,  (  ( *each ) [ GENIE_HOUR ]  ) + (  ( *each ) [ GENIE_DURATION ]  )  ) ; }); }); }
{ int keys[] = {GENIE_DAY, GENIE_LECTURER}; 

b->fitness += group_by(b, keys,2,[](gene_t** b, gene_t** e) 
	{ return genie_overlap(b,e,[](const gene_t* each) { return  interval_t (  ( *each ) [ GENIE_HOUR ]  ,  (  ( *each ) [ GENIE_HOUR ]  ) + (  ( *each ) [ GENIE_DURATION ]  )  ) ; }); }); }
b->fitness += sum(b->gene, b->gene+CHROMOSOME_SIZE, [](const gene_t* each) { return  ( (  ( (  ( (  ( *each ) [ GENIE_DAY ]  ) == ( 4 ) )  ) * (  ( (  ( *each ) [ GENIE_HOUR ]  ) <= ( 13 ) )  ) )  ) * (  ( ( 13 ) <= (  ( (  ( *each ) [ GENIE_HOUR ]  ) + (  ( *each ) [ GENIE_DURATION ]  ) )  ) )  ) ) ; });