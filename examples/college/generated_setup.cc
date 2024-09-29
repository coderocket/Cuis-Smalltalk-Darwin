#include <sstream>
#include "interval.h"

using std::stringstream;
using std::invalid_argument;

int genie_module(int);
int genie_duration(int);
int genie_frame(int);

void populate_with_all_alleles(chromosome_t* b, chromosome_t* e) {

	while(b != e) {
	
		for(int room = 1 ; room <= 3 ; room++ ) {

			for(int day = 1 ; day <=5 ; day++) {

				for(int hour = 8; hour <= 17 ; hour++) {

					for(int lecturer = 1 ; lecturer <= 5; lecturer++ ) {

						for(int i = 0;i < CHROMOSOME_SIZE; i++) {
					
							b->gene[i][GENIE_ROOM] = room;
							b->gene[i][GENIE_DAY] = day;
							b->gene[i][GENIE_HOUR] = hour;
							b->gene[i][GENIE_LECTURER] = lecturer;
 							b->gene[i][ GENIE_FRAME ] = genie_frame ( b->gene[i][ GENIE_LOCUS ]  )  ; 
 b->gene[i][ GENIE_MODULE ] =  genie_module (  b->gene[i][ GENIE_LOCUS ]  )  ; 
 b->gene[i][ GENIE_DURATION ] =  genie_duration (  b->gene[i][ GENIE_MODULE ]  )  ; 
						}
					}
				}
			}
		}

		++b;
	}
}
