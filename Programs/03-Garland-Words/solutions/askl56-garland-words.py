with open('resource/enable1.txt') as f:
    words = {line.rstrip('\n') for line in f}

def garland(w):
    return next((i for i in reversed(range(len(w))) if w[:i] == w[-i:]), 0)

def garland_chain(w, rep=3, assert_garland=False):
    n = garland(w)
    assert n or not assert_garland, "'{}' is not a garland word!".format(w)

    return w + w[n:] * rep
