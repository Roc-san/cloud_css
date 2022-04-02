#include <stdio.h>
#include <stdlib.h>

/* fibonacci: calcule le n-ème terme de la suite de fibonacci */
unsigned fibonacci(unsigned n);

/* ce programme prend en argument n, et s'il n'est pas spécifié, utilise n = 10 */
int
main(int argc, char *argv[])
{
	unsigned n = 10, f;
	if(argc >= 2)
		n = atoi(argv[1]);
	f = fibonacci(n);
	printf("%u\n", f);
}
