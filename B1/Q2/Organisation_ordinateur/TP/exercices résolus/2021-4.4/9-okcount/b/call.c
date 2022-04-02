#include <stdio.h>

/* count_ok: compte combien de fois la chaîne "ok" apparait dans str */
unsigned count_ok(char *str);

/* ce programme compte le nombre de fois que "ok" apparait dans le premier argument
   ou dans une chaine de test */
int
main(int argc, char *argv[])
{
	char *str = "oktsratsraokok o k";
	if(argc >= 2)
		str = argv[1];
	printf("%u\n", count_ok(str));
}
