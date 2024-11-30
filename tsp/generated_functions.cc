#include <math.h>
#include <array>
#include "random_number_generator.h"
#include "chromo.h"

using std::array;

#include "bitmap.cc"

int genie_dummy(int arg) {
if (arg == 0) { return 1; }
if (arg == 1) { return 0; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_dummy" ; throw invalid_argument(err_msg.str()); }
}

#if 0
int genie_xcoord(int arg) {

if (arg ==  0 ) { return  12 ; }
if (arg ==  1 ) { return  17 ; }
if (arg ==  2 ) { return  13 ; }
if (arg ==  3 ) { return  9 ; }
if (arg ==  4 ) { return  5 ; }

{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_xcoord" ; throw invalid_argument(err_msg.str()); }

}

int genie_ycoord(int arg) {

if (arg ==  0 ) { return  21 ; }
if (arg ==  1 ) { return  15 ; }
if (arg ==  2 ) { return  8 ; }
if (arg ==  3 ) { return  7 ; }
if (arg ==  4 ) { return  13 ; }

{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_ycoord" ; throw invalid_argument(err_msg.str()); }
}
#endif 

int genie_xcoord(int arg) {

if (arg ==  0 ) { return  37 ; }
if (arg ==  1 ) { return  49 ; }
if (arg ==  2 ) { return  52 ; }
if (arg ==  3 ) { return  20 ; }
if (arg ==  4 ) { return  40 ; }
if (arg ==  5 ) { return  21 ; }
if (arg ==  6 ) { return  17 ; }
if (arg ==  7 ) { return  31 ; }
if (arg ==  8 ) { return  52 ; }
if (arg ==  9 ) { return  51 ; }
if (arg ==  10 ) { return  42 ; }
if (arg ==  11 ) { return  31 ; }
if (arg ==  12 ) { return  5 ; }
if (arg ==  13 ) { return  12 ; }
if (arg ==  14 ) { return  36 ; }
if (arg ==  15 ) { return  52 ; }
if (arg ==  16 ) { return  27 ; }
if (arg ==  17 ) { return  17 ; }
if (arg ==  18 ) { return  13 ; }
if (arg ==  19 ) { return  57 ; }
if (arg ==  20 ) { return  62 ; }
if (arg ==  21 ) { return  42 ; }
if (arg ==  22 ) { return  16 ; }
if (arg ==  23 ) { return  8 ; }
if (arg ==  24 ) { return  7 ; }
if (arg ==  25 ) { return  27 ; }
if (arg ==  26 ) { return  30 ; }
if (arg ==  27 ) { return  43 ; }
if (arg ==  28 ) { return  58 ; }
if (arg ==  29 ) { return  58 ; }
if (arg ==  30 ) { return  37 ; }
if (arg ==  31 ) { return  38 ; }
if (arg ==  32 ) { return  46 ; }
if (arg ==  33 ) { return  61 ; }
if (arg ==  34 ) { return  62 ; }
if (arg ==  35 ) { return  63 ; }
if (arg ==  36 ) { return  32 ; }
if (arg ==  37 ) { return  45 ; }
if (arg ==  38 ) { return  59 ; }
if (arg ==  39 ) { return  5 ; }
if (arg ==  40 ) { return  10 ; }
if (arg ==  41 ) { return  21 ; }
if (arg ==  42 ) { return  5 ; }
if (arg ==  43 ) { return  30 ; }
if (arg ==  44 ) { return  39 ; }
if (arg ==  45 ) { return  32 ; }
if (arg ==  46 ) { return  25 ; }
if (arg ==  47 ) { return  25 ; }
if (arg ==  48 ) { return  48 ; }
if (arg ==  49 ) { return  56 ; }
if (arg ==  50 ) { return  30 ; }
{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_xcoord" ; throw invalid_argument(err_msg.str()); }
}

int genie_ycoord(int arg) {
if (arg ==  0 ) { return  52 ; }
if (arg ==  1 ) { return  49 ; }
if (arg ==  2 ) { return  64 ; }
if (arg ==  3 ) { return  26 ; }
if (arg ==  4 ) { return  30 ; }
if (arg ==  5 ) { return  47 ; }
if (arg ==  6 ) { return  63 ; }
if (arg ==  7 ) { return  62 ; }
if (arg ==  8 ) { return  33 ; }
if (arg ==  9 ) { return  21 ; }
if (arg ==  10 ) { return  41 ; }
if (arg ==  11 ) { return  32 ; }
if (arg ==  12 ) { return  25 ; }
if (arg ==  13 ) { return  42 ; }
if (arg ==  14 ) { return  16 ; }
if (arg ==  15 ) { return  41 ; }
if (arg ==  16 ) { return  23 ; }
if (arg ==  17 ) { return  33 ; }
if (arg ==  18 ) { return  13 ; }
if (arg ==  19 ) { return  58 ; }
if (arg ==  20 ) { return  42 ; }
if (arg ==  21 ) { return  57 ; }
if (arg ==  22 ) { return  57 ; }
if (arg ==  23 ) { return  52 ; }
if (arg ==  24 ) { return  38 ; }
if (arg ==  25 ) { return  68 ; }
if (arg ==  26 ) { return  48 ; }
if (arg ==  27 ) { return  67 ; }
if (arg ==  28 ) { return  48 ; }
if (arg ==  29 ) { return  27 ; }
if (arg ==  30 ) { return  69 ; }
if (arg ==  31 ) { return  46 ; }
if (arg ==  32 ) { return  10 ; }
if (arg ==  33 ) { return  33 ; }
if (arg ==  34 ) { return  63 ; }
if (arg ==  35 ) { return  69 ; }
if (arg ==  36 ) { return  22 ; }
if (arg ==  37 ) { return  35 ; }
if (arg ==  38 ) { return  15 ; }
if (arg ==  39 ) { return  6 ; }
if (arg ==  40 ) { return  17 ; }
if (arg ==  41 ) { return  10 ; }
if (arg ==  42 ) { return  64 ; }
if (arg ==  43 ) { return  15 ; }
if (arg ==  44 ) { return  10 ; }
if (arg ==  45 ) { return  39 ; }
if (arg ==  46 ) { return  32 ; }
if (arg ==  47 ) { return  55 ; }
if (arg ==  48 ) { return  28 ; }
if (arg ==  49 ) { return  37 ; }
if (arg ==  50 ) { return  40 ; }

{ stringstream err_msg; err_msg << "unexpected argument: " << arg << " to function: " << "genie_ycoord" ; throw invalid_argument(err_msg.str()); }
}

double euclid_distance(int c1, int c2) {

	double x1 = genie_xcoord(c1);
	double y1 = genie_ycoord(c1);

	double x2 = genie_xcoord(c2);
	double y2 = genie_ycoord(c2);

	return sqrt( (x1-x2)*(x1-x2) + (y1-y2)*(y1-y2) );	
}

#include "generated_initial_population.cc"
