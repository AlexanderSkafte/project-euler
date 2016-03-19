#include <stdio.h>

int fibonacci(unsigned int n)
{
	return (n == 0) || (n == 1)
		? n
		: fibonacci(n - 1) + fibonacci(n - 2);
}

int main(void)
{
	unsigned int fibo_term = 0;
	unsigned int sum = 0;
	unsigned int n = 0;

	while ((fibo_term = fibonacci(n++)) <= 4000000)
		if (fibo_term % 2 == 0)
			sum += fibo_term;
	
	printf("sum = %d\n", sum);

	return 0;
}
