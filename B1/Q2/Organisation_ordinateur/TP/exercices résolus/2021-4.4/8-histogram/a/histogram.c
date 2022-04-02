#define TH_SIZE 256

void
histogramme(unsigned char ts[], unsigned long n, unsigned long th[])
{
	unsigned long i, j, c;
	for(i = 0; i < TH_SIZE; i++){
		c = 0;
		for(j = 0; j < n; j++)
			if(i == th[j])
				c++;
		th[i] = c;
	}
}
