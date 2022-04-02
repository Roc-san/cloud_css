#include <stdio.h>
#include <string.h>

unsigned sequence(void *src, unsigned n);

int
main()
{
	char *test = "testahhh";
	unsigned rc = sequence(test, strlen(test));
	printf("%u\n", rc);
}
