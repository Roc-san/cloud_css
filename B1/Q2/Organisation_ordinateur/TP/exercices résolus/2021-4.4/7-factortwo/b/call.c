#include <stdio.h>
#include <stdlib.h>

/* factortwo: calcule combien de fois a est un diviseur de 2 */
unsigned long factortwo(unsigned long a);

/* ce programme utilise factortwo pour le premier entier entré en argument, ou 96 */
int
main(int argc, char *argv[])
{
	unsigned long rc, a;
	if(argc >= 2)
		a = atoi(argv[1]);
	else
		a = 96;
	rc = factortwo(a);
	printf("%lu\n", rc);
}
