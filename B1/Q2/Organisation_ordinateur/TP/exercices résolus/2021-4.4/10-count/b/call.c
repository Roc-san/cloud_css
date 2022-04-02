#include <stdio.h>

/* f: compte le nombre de nombres inférieur à c dans un tableau d'entiers t (terminé par 0) */
unsigned f(unsigned t[], unsigned c);

/* ce programme compte combien de nombre inférieurs à 8 sont présent dans le tableau t */
int
main()
{
	unsigned t[] = {4, 8, 9, 76, 6, 7, 3, 1, 3, 7, 42, 69, 0};
	printf("%u\n", f(t, 8));
}
