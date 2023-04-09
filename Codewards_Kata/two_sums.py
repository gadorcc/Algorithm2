def two_sum(numbers, target):
    lst = list(combinations(numbers,2))
    for tuple in lst:
        result = sum(tuple)
        if result == target:
            list_win = list(tuple)
    l = []
    x = range(len(numbers))
    for n in x:
        for num in list_win:
            if numbers[n] == num:
                l.append(n)
    mylist = list(set(l))
    return mylist


# x = range(6)
# for n in x:
#   print(n)

# test.assert_equals(sorted(two_sum([1234,5678,9012], 14690)), [1,2])


def combinations(iterable, r):
    # combinations('ABCD', 2) --> AB AC AD BC BD CD
    # combinations(range(4), 3) --> 012 013 023 123
    pool = tuple(iterable)
    n = len(pool)
    if r > n:
        return
    indices = list(range(r))
    yield tuple(pool[i] for i in indices)
    while True:
        for i in reversed(range(r)):
            if indices[i] != i + n - r:
                break
        else:
            return
        indices[i] += 1
        for j in range(i+1, r):
            indices[j] = indices[j-1] + 1
        yield tuple(pool[i] for i in indices)

two_sum([1234,5678,9012], 14690)
