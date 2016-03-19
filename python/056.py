# Project Euler
# Problem 56: Powerful digit sum

def digit_sum(n):
	return sum(map(int, list(str(n))))

digit_sums = []

for i in range(100):
	for j in range(100):
		digit_sums.append(digit_sum(i ** j))

print(max(digit_sums))

