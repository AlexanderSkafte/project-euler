#include <math.h>
#include <stdbool.h>
#include <stdio.h>

int is_even(int n)
{
	return n % 2 == 0;
}

int is_odd(int n)
{
	return n % 2 != 0;
}

int is_prime(int n)
{
	if (is_even(n))
		return 0;

	int numbers[n];

	int i;
	for (i = 0; i < n; n++) {
		if (is_odd(n)) {
			// do cool stuff
			// lol
		}
	}

	return 0;
}

int main(void)
{
	return 0;
}
