
import math

def is_prime(n):
	if n % 2 == 0 and n > 2: 
		return False
	return all(n % i for i in range(3, int(math.sqrt(n)) + 1, 2))

N = 600851475143

for i in range(N - 2, 0, -2):
	if (N / i).is_integer() and is_prime(i):
		break

print(i)

