#include <stdio.h>

unsigned
factortwo(unsigned n)
{
	if(n & 1)
		return 0;
	unsigned r;
	while(!(n & 1)){
		r++;
		n >>= 1;
	}
	return r;
}
