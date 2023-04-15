def permutation(chars: str):
    # Base case
    if len(chars) == 1:
        return [chars]
    return flatten_lists([add_char(chars[i], permutation(chars[:i] + chars[i+1: ]))
                            for i in range(len(chars))])

def add_char(char: str, string_list):
    return [char + string for string in string_list]

def flatten_lists(lists):
    result = []
    for l1 in lists:
        result += l1
    return result

permutation('abc')
