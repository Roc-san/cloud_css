#include <stdio.h>
#include <stdlib.h>

/* division: exécute une division entière de a par b */
unsigned division(unsigned a, unsigned b);

/* factoriser: factorisation en facteurs premiers de a, utilisant la routine `division` */
void factoriser(unsigned a);

/* ce programme factorise un nombre spécifié par l'utilisateur en argument, utilise nombre = 20 par défaut */
int
main(int argc, char *argv[])
{
	int a;
	if(argc < 2)
		a = 20;
	else
		a = atoi(argv[1]);
	factoriser(a);
}
