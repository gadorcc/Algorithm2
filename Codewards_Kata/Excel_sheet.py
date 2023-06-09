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

# >>> seasons = ['Spring', 'Summer', 'Fall', 'Winter']
# >>> list(enumerate(seasons))
# [(0, 'Spring'), (1, 'Summer'), (2, 'Fall'), (3, 'Winter')]
# >>> list(enumerate(seasons, start=1))
# [(1, 'Spring'), (2, 'Summer'), (3, 'Fall'), (4, 'Winter')]
