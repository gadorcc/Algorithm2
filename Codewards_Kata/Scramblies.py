def scramble(s1, s2):
    list_s2= list(s2)
    list_s1 = list(s1)
    dict_s1 = (dict((x,list_s1.count(x)) for x in set(list_s1)))
    for item in list_s2:
        if item in dict_s1:
            if dict_s1[item] >1:
                dict_s1[item] = dict_s1[item] - 1
            elif dict_s1[item] == 1:
                del dict_s1[item]
        else:
            return False
    return True




scramble('rkqodlw', 'world')
