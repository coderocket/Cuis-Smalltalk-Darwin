 a_gene[ GENIE_ROOM ] =  interval_t ( 1 , 100 ) .at_random ( )  ; 
 a_gene[ GENIE_DAY ] =  interval_t ( 1 , 6 ) .at_random ( )  ; 
 a_gene[ GENIE_HOUR ] =  genie_hour (  a_gene[ GENIE_DAY ]  )  ; 
 a_gene[ GENIE_CAMPUS ] =  genie_campus (  a_gene[ GENIE_ROOM ]  )  ; 
 //a_gene[ GENIE_MODULE ] =  genie_module (  a_gene[ GENIE_LOCUS ]  )  ; 
 a_gene[ GENIE_LECTURER ] =  genie_lecturer (  a_gene[ GENIE_MODULE ]  )  ; 
 a_gene[ GENIE_DURATION ] =  genie_duration (  a_gene[ GENIE_MODULE ]  )  ; 
