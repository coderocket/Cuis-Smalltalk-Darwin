
int group_by(instance_t* b, instance_t* e, int keys[], int n_keys, int (*f)(instance_t** ,instance_t**)) ;

int sum(instance_t* b, instance_t* e, int (*f)(const instance_t*)) ;

int genie_sum(instance_t** b, instance_t** e, int (*f)(const instance_t*)) ;

int genie_count(instance_t** b, instance_t** e, int (*f)(const instance_t*)) ;

int genie_intersect(interval_t x, interval_t y) ;

int genie_overlap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) ;

int genie_maxgap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) ;

int genie_mingap(instance_t** b, instance_t** e, interval_t (*f)(const instance_t*)) ;

template<typename F>
int genie_table_iterate(const std::multimap<std::array<int, 2>, interval_t> & table, int key1, int key2, F f) {
        int sum = 0;
        auto b = table.lower_bound({key1, key2});
        auto e = table.upper_bound({key1, key2});
        while (b!=e) {
                sum += f(b->second); 
                ++b;
        }       

        return sum;
}       

