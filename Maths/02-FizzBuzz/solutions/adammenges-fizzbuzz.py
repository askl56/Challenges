def fizzbuzz(n):
    print "\n".join([('Fizz'*(not i%3) + 'Buzz'*(not i%5)) if ((not i%3) or (not i%5)) else str(i) for i in xrange(1, n+1)])

# Or I also like this one:

def fizzbuzz(n):
    for i in xrange(1, n+1): print [i, 'Fizz', 'Buzz', 'FizzBuzz'][(i%3 == 0) + 2 * (i % 5 == 0)]