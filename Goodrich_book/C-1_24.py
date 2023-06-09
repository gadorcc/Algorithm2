def vowel(str):
    v = ["a","e","i","o","u"]
    arr = [x for x in str]
    c = 0
    for n in arr:
        for vowel in v:
            if n == vowel:
                c +=1
    print(c)


vowel("cuentame")
