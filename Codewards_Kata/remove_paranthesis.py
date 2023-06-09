def remove_parentheses(s):
    arr = list(s)
    index_arr1 = []
    index_arr2 = []
    for idx, x in enumerate(arr):
        if x == "(":
            index_arr1.append(idx)
        elif x == ")":
            index_arr2.append(idx)
    str = s
    for idx, x in enumerate(index_arr1):
        str = (str[:x]+str[index_arr2[idx]:])
        print(str)
    print(str)

# s[:2] + s[2:]



# remove_parentheses("a (bc d)e")
remove_parentheses("(first group) (second group) (third group)")
# remove_parentheses("hello example (words(more words) here) something")
