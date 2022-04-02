unsigned
prefixe_commun(unsigned char t1[], unsigned char t2[], unsigned n)
{
	unsigned prefixlen;
	for(prefixlen = 0; prefixlen < n; prefixlen++)
		if(t1[prefixlen] != t2[prefixlen])
			break;
	return prefixlen;
}
