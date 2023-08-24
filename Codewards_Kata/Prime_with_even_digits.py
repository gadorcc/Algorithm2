def f(n):
    # your code here
    dict_n = { 7 : 1000000, 6: 100000, 5: 10000, 4: 1000, 3: 100, 2: 10, 1: 1}
    len_n = len([int(i) for i in str(n)])
    num = dict_n[len_n]
    print(num)
    while num > 0:
        list_num = [*range(n,num-1, -1)]
        list_prime = [x for x in list_num if prime(x) is True]
        while len_n > 1:
            for i in list_prime:
                i_digits = [int(x) for x in str(i)]
                if len([x for x in i_digits if x % 2 == 0 and x>0]) == len_n:
                    print(i)
                    break
            len_n -= 1
        len_n -= 1
        num = dict_n[len_n]
    print(list_prime)
    # return p


def prime(x):
    if x > 1:
    # check for factors
        for i in range(2,x):
            if (x % i) == 0:
                break
        else:
            return True


f(10000)
