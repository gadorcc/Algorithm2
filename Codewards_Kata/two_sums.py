from itertools import combinations
def two_sum(numbers, target):
    lst = list(combinations(numbers,2))
    for tuple in lst:
        result = sum(tuple)
        if result == target:
            list_win = list(tuple)
    print(list_win)
    l = []
    number_index = numbers.index(list_win[0])
    l.append(number_index)
    print(l)
    print(number_index)
    numbers2 = numbers[(number_index+1):]
    print(numbers2)
    number_index2 = numbers2.index(list_win[1])
    l.append(number_index2 + number_index + 1)
    print(l)



# x = range(6)
# for n in x:
#   print(n)

# test.assert_equals(sorted(two_sum([1234,5678,9012], 14690)), [1,2])
