def is_even(k):
    for num in range(0,k+2, 2):
        if num == k:
            return True
    return False


is_even(3)
