
/* 

n = 4

  0 1 2 3 4 5 6 7 8 9

x 0 0 0 0 1 1 1 2 2 3
y 1 2 3 4 2 3 4 3 4 4


Given an integer n and a sequence a of n*(n+1)/2 bits calculate the edges
they encode

*/

void bitmap_to_edges(int n, const int* a, int* x , int* y); 

/* 

n = 4

  0 1 2 3 4 5 6 7 8 9

x 0 0 0 0 1 1 1 2 2 3
y 1 2 3 4 2 3 4 3 4 4


Given an integer n, an integer x, and an integer y, calculate the index
position in the bitmap.

We assume that 0 <= x < y < n 

*/

int edge_to_bitmap_index(int n, const int x, const int y); 

void make_random_tour(int n, int* x, int* y); 

bool is_valid_tour(int n, int* x, int* y);

