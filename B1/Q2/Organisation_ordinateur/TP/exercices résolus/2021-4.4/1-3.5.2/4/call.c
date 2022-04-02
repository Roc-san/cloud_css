#include <stdio.h>

void add(void *a, void *b);

int
main()
{
	unsigned char a[] = {255, 255, 255, 255, 1};
	unsigned char b[] = {10};
	add(a, b);
	printf("%d %d %d %d %d\n", a[0], a[1], a[2], a[3], a[4]);
}
