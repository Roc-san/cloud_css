#include <stdio.h>

/* est_palindrome: renvoie 1 si la chaine de caractère `mot` est un palindrome, et 0 si elle ne l'est pas */
int est_palindrome(char *mot);

/* ce programme peut prendre mot en premier argument, et utilise "radar" s'il n'est rien spécifié */
int
main(int argc, char *argv[])
{
	int rc;
	char *mot = "radar";
	if(argc >= 2)
		mot = argv[1];
	rc = est_palindrome(mot);
	if(rc)
		printf("vrai\n");
	else
		printf("faux\n");
}
