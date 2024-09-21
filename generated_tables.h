int genie_hour(int arg) {
if (arg == 1) { return ( ( interval_t ( 8 , 22 ) ) ).at_random(); }
if (arg == 2) { return ( ( interval_t ( 8 , 22 ) ) ).at_random(); }
if (arg == 3) { return ( ( interval_t ( 8 , 22 ) ) ).at_random(); }
if (arg == 4) { return ( ( interval_t ( 8 , 22 ) ) ).at_random(); }
if (arg == 5) { return ( ( interval_t ( 8 , 22 ) ) ).at_random(); }
if (arg == 6) { return ( ( interval_t ( 8 , 13 ) ) ).at_random(); }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_hour" ; throw invalid_argument(err_msg.str()); }
}

int genie_campus(int arg) {
if (1<= arg && arg < 50) { return 1; }
if (51<= arg && arg < 100) { return 2; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_campus" ; throw invalid_argument(err_msg.str()); }
}

int genie_module(int arg) {
if (arg == 1) { return 1; }
if (arg == 2) { return 1; }
if (arg == 3) { return 1; }
if (arg == 4) { return 2; }
if (arg == 5) { return 2; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_module" ; throw invalid_argument(err_msg.str()); }
}

int genie_duration(int arg) {
if (arg == 1) { return 2; }
if (arg == 2) { return 3; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_duration" ; throw invalid_argument(err_msg.str()); }
}

int genie_lecturer(int arg) {
if (arg == 1) { vector<int> v({1 , 3}); return v[rand() % v.size()]; }
if (arg == 2) { vector<int> v({1 , 2 , 3}); return v[rand() % v.size()]; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_lecturer" ; throw invalid_argument(err_msg.str()); }
}
