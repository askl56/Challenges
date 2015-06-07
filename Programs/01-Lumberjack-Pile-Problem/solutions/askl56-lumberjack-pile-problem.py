n, to_place, *piles = [int(n) for n in open("input.txt").read().split()]

for i in range(to_place):
    piles[piles.index(min(piles))] += 1

for i in range(0, n*n, n):
    print(*piles[i:i+n])
