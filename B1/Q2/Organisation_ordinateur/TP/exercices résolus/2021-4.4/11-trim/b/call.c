#include <stdio.h>

/* f: (trim) retire le dernier caractère de la chaine de caractères str */
void f(char *str);

/* ce programme utilise f sur le mot Ordinateurs pour lui enlever le s */
int
main()
{
	char str[] = "Ordinateurs";
	f(str);
	printf("%s\n", str);
}
