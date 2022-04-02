#include <stdio.h>

/* cdot = produit scalaire */

/* produit_scalaire: calcule le produit scalaire de v1 et de v2 */
short produit_scalaire(char v1[], char v2[], unsigned n);

int
main()
{
	short rc;
	char v1[] = {2, 4};
	char v2[] = {-1, -50};
	rc = produit_scalaire(v1, v2, 2);
	printf("%d\n", rc);
}
