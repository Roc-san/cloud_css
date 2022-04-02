#include <stdio.h>

int strlen(char *test);

int
main()
{
	int rc = strlen("hello :)");
	printf("%d\n", rc);
}
