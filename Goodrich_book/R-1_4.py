def square(n):
    squared = map(lambda num: num ** 2, range(n))
    print(sum((list(squared))))

square(6)
