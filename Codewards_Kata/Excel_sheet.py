import string
def title_to_number(title):
    alphabet = list(string.ascii_uppercase)
    print(alphabet)
    title_list = list(title.strip())
    print(title_list)
    count = 27
    for char in title_list:
        for index, item in enumerate(alphabet):
            if item == char:
                count += index
    if len(title_list) == 1:
        count = count - 26
    else:
        count
    print(count)


title_to_number('BA')
# test.assert_equals(title_to_number('A'),1)
# test.assert_equals(title_to_number('Z'),26)
# test.assert_equals(title_to_number('AA'),27)
# test.assert_equals(title_to_number('AZ'),52)
# test.assert_equals(title_to_number('BA'),53)