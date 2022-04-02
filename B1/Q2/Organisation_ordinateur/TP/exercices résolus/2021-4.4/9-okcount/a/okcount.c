unsigned
count_ok(char *str)
{
	unsigned times = 0, i;
	for(i = 0; str[i] && str[i + 1]; i++){
		if(str[i] == 'o' && str[i+1] == 'k'){
			i++;
			times++;
		}
	}
	return times;
}
