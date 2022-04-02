#include <stdio.h>

void rev(void *src, unsigned n);

int
main()
{
	char test[] = "test";
	rev(test, 4);
	printf("%s\n", test);
}
