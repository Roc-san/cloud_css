#include <stdio.h>

int streq(char *a, char *b);

int
main()
{
	char *a = "test";
	char *b = "test";
	int rc = streq(a, b);
	if(rc)
		printf("égales\n");
	else
		printf("non égales\n");
}
