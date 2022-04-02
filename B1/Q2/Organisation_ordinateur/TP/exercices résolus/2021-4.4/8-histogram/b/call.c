#include <stdio.h>

/* histogramme: crée un histogramme selon la précédure décrite dans l'énoncé */
void histogramme(unsigned long ts[], unsigned long n, unsigned long th[]);

/* ce programme crée un histogramme en utilisant la fonction au dessus */
int
main()
{
	unsigned long ts[] = {1, 1, 1, 1, 1, 2, 3, 4, 42, 69}, th[256], i;
	histogramme(ts, 10, th);
	for(i = 0; i < 256; i++)
		printf("th[%lu] = %lu\n", i, th[i]);
}
 
