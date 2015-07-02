def sum_of_multiples_3_5(n):
	return reduce(lambda x, y: x+y if not y%3 or not y%5 else x, xrange(n), 0)