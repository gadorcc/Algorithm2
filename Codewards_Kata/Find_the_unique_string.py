import string
def find_uniq(arr):
    alphabet = list((string.ascii_lowercase))
    my_list = []
    for lists in arr:
        my_list.append([letter for letter in lists])
    print(my_list[2])
    num_list = []
    for lists in my_list:
        counter =  0
        for l in lists:
            counter = 0
            for letter in alphabet:
                if l == letter:
                    num_list.append(counter)
                    # index = lists.index(l)
                    # my_list[index] = counter
                else:
                    counter += 1
    print(num_list)


find_uniq([ 'abc', 'acb', 'bac', 'foo', 'bca', 'cab', 'cba'])
# test.assert_equals(find_uniq([ 'Aa', 'aaa', 'aaaaa', 'BbBb', 'Aaaa', 'AaAaAa', 'a' ]), 'BbBb')
