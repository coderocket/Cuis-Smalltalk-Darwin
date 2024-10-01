
int group_by(instance_t* c, int keys[], int n_keys, int (*f)(instance_t** ,instance_t**)) ;

int sum(instance_t* b, instance_t* e, int (*f)(const instance_t*)) ;

int genie_sum(instance_t** b, instance_t** e, int (*f)(const instance_t*)) ;

int genie_count(instance_t** b, instance_t** e, int (*f)(const instance_t*)) ;

int genie_intersect(interval_t x, interval_t y) ;

int genie_overlap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) ;

int genie_maxgap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) ;

int genie_mingap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) ;

