def run( N, M):
    sequence = []
    fizz = [*range(0, M+1, 3)]
    buzz = [*range(0, M+1, 5)]
    print(fizz)
    print(buzz)
    x = range(N,M+1)
    for n in x:
        if n in fizz:
            sequence.append("Fizz")
        elif n in buzz:
            sequence.append("Buzz")
        else:
            sequence.append(n)

    return ",".join(map(str, sequence))


run(5,15)
