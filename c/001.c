#include <stdio.h>

int main(void)
{
	unsigned int sum;
	unsigned int n;

	for (n = 0, sum = 0; n < 1000; n++)
		if (n % 3 == 0 || n % 5 == 0)
			sum += n;

	printf("sum = %d\n", sum);
	return 0;
}
