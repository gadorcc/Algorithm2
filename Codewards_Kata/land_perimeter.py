def land_perimeter(arr):
    arr2 = list("".join(arr))
    arr3 = list("".join(arr[0]))
    print(arr3)
    l = len(arr3)
    sum = 0
    for index, ch in enumerate(arr2):
        if ch == 'X':
            sum +=4
            sum -=1 if index-1>= 0 and arr2[index-1] == 'X' else 0
            sum -=1 if (index+1 < len(arr2)) and arr2[index+1] == 'X' else 0
            sum -=1 if index-l >= 0 and arr2[index-l] == 'X' else 0
            sum -=1 if index+l < len(arr2) and arr2[index+l] == 'X' else 0
            print(ch, sum, index)

    print(sum)




# land_perimeter(["OXOOOX", "OXOXOO", "XXOOOX", "OXXXOO", "OOXOOX", "OXOOOO", "OOXOOX", "OOXOOO", "OXOOOO", "OXOOXX"])
land_perimeter(["OXOOO", "OOXXX", "OXXOO", "XOOOO", "XOOOO", "XXXOO", "XOXOO", "OOOXO", "OXOOX", "XOOOO", "OOOXO"])
