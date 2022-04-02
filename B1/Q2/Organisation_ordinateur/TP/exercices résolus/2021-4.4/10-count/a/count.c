unsigned
f(unsigned t[], unsigned c)
{
	unsigned r = 0, i;
	for(i = 0; t[i]; i++)
		if (t[i] < c) r++;
	return r;
}
