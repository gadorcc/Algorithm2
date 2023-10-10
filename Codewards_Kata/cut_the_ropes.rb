def cut_the_ropes(arr)
  result = [arr.length]
  while arr.length > 0
  min_arr = arr.min
  arr.map! { |num| num - arr.min }.delete(0)
  result << arr.length if arr.length > 0
  end
  return result
end


cut_the_ropes([3, 3, 2, 9, 7])
# .to eq([5, 4, 2, 1])
cut_the_ropes([1, 2, 3, 4, 3, 3, 2, 1])
# # .to eq([8, 6, 4, 1])
cut_the_ropes([13035, 6618, 13056, 20912, 1119, 13035, 6618, 6618, 8482, 13056])
# # .to eq([10, 9, 6, 5, 3, 1])
cut_the_ropes([9, 9, 9, 9, 7])
# .to eq([5, 4]


# You have 5 ropes:

#                  3 3 2 9 7   ( 5 left)

# step 1:          1 1 0 7 5   ( 4 left)

# step 2:          0 0 0 6 4   ( 2 left)

# step 3:          0 0 0 0 2   ( 1 left)

# step 4:          0 0 0 0 0

# Hence the result is [5, 4, 2, 1]
