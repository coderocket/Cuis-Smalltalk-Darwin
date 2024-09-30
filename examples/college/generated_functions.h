int genie_hour(int arg) {
if (arg == 1) { return ( ( interval_t ( 8 , 17 ) ) ).at_random(); }
if (arg == 2) { return ( ( interval_t ( 8 , 17 ) ) ).at_random(); }
if (arg == 3) { return ( ( interval_t ( 8 , 17 ) ) ).at_random(); }
if (arg == 4) { return ( ( interval_t ( 8 , 17 ) ) ).at_random(); }
if (arg == 5) { return ( ( interval_t ( 8 , 17 ) ) ).at_random(); }
if (arg == 6) { return ( ( interval_t ( 8 , 13 ) ) ).at_random(); }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_hour" ; throw invalid_argument(err_msg.str()); }
}

int genie_campus(int arg) {
if (1<= arg && arg <= 50) { return 1; }
if (51<= arg && arg <= 100) { return 2; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_campus" ; throw invalid_argument(err_msg.str()); }
}

int genie_frame(int arg) {
if (1<= arg && arg <= 5) { return 1; }
if (6<= arg && arg <= 10) { return 2; }
if (11<= arg && arg <= 15) { return 3; }
if (15<= arg && arg <= 20) { return 4; }
if (21<= arg && arg <= 25) { return 5; }
if (26<= arg && arg <= 30) { return 6; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_frame" ; throw invalid_argument(err_msg.str()); }
}

int genie_module(int arg) {
if (arg == 1) { return 1; }
if (arg == 2) { return 2; }
if (arg == 3) { return 3; }
if (arg == 4) { return 4; }
if (arg == 5) { return 5; }
if (arg == 6) { return 1; }
if (arg == 7) { return 2; }
if (arg == 8) { return 3; }
if (arg == 9) { return 4; }
if (arg == 10) { return 5; }
if (arg == 11) { return 1; }
if (arg == 12) { return 2; }
if (arg == 13) { return 3; }
if (arg == 14) { return 4; }
if (arg == 15) { return 5; }
if (arg == 16) { return 1; }
if (arg == 17) { return 2; }
if (arg == 18) { return 3; }
if (arg == 19) { return 4; }
if (arg == 20) { return 5; }
if (arg == 21) { return 1; }
if (arg == 22) { return 2; }
if (arg == 23) { return 3; }
if (arg == 24) { return 4; }
if (arg == 25) { return 5; }
if (arg == 26) { return 1; }
if (arg == 27) { return 2; }
if (arg == 28) { return 3; }
if (arg == 29) { return 4; }
if (arg == 30) { return 5; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_module" ; throw invalid_argument(err_msg.str()); }
}

int genie_duration(int arg) {
if (arg == 1) { return 2; }
if (arg == 2) { return 2; }
if (arg == 3) { return 3; }
if (arg == 4) { return 3; }
if (arg == 5) { return 5; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_duration" ; throw invalid_argument(err_msg.str()); }
}

int genie_lecturer(int arg) {
if (arg == 1) { return ( ( interval_t ( 1 , 5 ) ) ).at_random(); }
if (arg == 2) { return ( ( interval_t ( 1 , 5 ) ) ).at_random(); }
if (arg == 3) { return ( ( interval_t ( 1 , 5 ) ) ).at_random(); }
if (arg == 4) { return ( ( interval_t ( 1 , 5 ) ) ).at_random(); }
if (arg == 5) { return ( ( interval_t ( 1 , 5 ) ) ).at_random(); }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_lecturer" ; throw invalid_argument(err_msg.str()); }
}
