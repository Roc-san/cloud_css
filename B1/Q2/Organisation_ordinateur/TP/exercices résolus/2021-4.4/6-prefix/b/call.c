#include <stdio.h>

/* prefixe_commun: détermine le plus long préfix commun entre deux tableaux d'octets, t1 et t2 */
unsigned long prefixe_commun(unsigned char t1[], unsigned char t2[], unsigned n);

/* ce programme mesure le plus long préfixe commun entre "baa" et "bab" et l'écrit */
int
main()
{
	unsigned rc;
	rc = prefixe_commun("baa", "bab", 3);
	printf("%d\n", rc);
}
