#include <stdio.h>

void strup(char *str);

int
main()
{
	char test[] = "this is a test 42.";
	strup(test);
	printf("%s\n", test);
}
