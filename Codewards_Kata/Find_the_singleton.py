def run(list_students):
    l_dict = {key: list_students.count(key) for key in set(list_students)}
    print (l_dict)
    print([k for k,v in l_dict.items() if v == 1])
run([2,4,2,4,5])
