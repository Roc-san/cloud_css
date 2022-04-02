#include <stdio.h>

void memcpy(void *dest, void *src, unsigned n);

int
main()
{
	char test[] = "hello";
	memcpy(test, test, 2);
	printf("%s\n", test);
}
