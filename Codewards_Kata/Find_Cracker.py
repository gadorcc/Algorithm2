def find_hack(arr):
    dict_letter = {"A":30, "B":20, "C":10, "D":5}
    arr_result = []
    for n in arr:
        sum1 = 0
        count_ab = 0
        all_ab = True
        for letter in n[2]:
            if letter in dict_letter:
                sum1  += dict_letter[letter]
                if letter == 'A' or letter == 'B':
                    count_ab += 1
                else:
                    all_ab = False
        if count_ab > 4 and all_ab == True:
            sum1 += 20
        if sum1 > 200:
            sum1 = 200
        if n[1] != sum1:
            arr_result.append(n[0])
    return arr_result

array = [
    ["name1", 150, ["B", "A", "A", "C", "A", "A"]],
    ["name2", 120, ["B", "A", "A", "A"]],
    ["name3", 160, ["B", "A", "A", "A","A"]],
    ["name4", 140, ["B", "A", "A", "C", "A"]]
]

find_hack(array)
