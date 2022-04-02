#include <stdio.h>

void
f(char *str)
{
	if(!*str)
		return;
	while(*str)
		str++;
	*--str = '\0';
}

int
main()
{
	char str[] = "Ordinateurs";
	f(str);
	printf("%s\n", str);
}
