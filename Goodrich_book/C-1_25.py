import string
def puntuation(str):
    arr = [x for x in str]
    for i in arr:
        if i in string.punctuation:
            arr.remove(i)
    print(''.join(arr))



puntuation("let's try, Mike.")
