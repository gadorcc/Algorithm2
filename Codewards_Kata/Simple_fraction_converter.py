import math
def mixed_fraction(s):
    array = s.split("/")
    int_array = list(map(int, array))
    divmov_arr = list(divmod(int_array[0],int_array[1]))
    arr = [divmov_arr[1], int_array[1]]
    gcd_arr = recursion_gcd(arr)
    return '{} {}/{}'.format(divmov_arr[0],gcd_arr[0],gcd_arr[1])

def recursion_gcd(arr):
    if (math.gcd(arr[0],arr[1])) == 0:
        return False
    elif (math.gcd(arr[0],arr[1])) == 1:
        return arr
    else:
        int_gcd = math.gcd(arr[0],arr[1])
        return list(map(lambda x: int(x/int_gcd), arr))

mixed_fraction('42/9')
