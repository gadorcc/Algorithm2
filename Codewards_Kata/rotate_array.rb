def rotate(nums, k)
  p nums
  nums = nums.drop(k+1) + nums.take(nums.count - k)
  p nums
end



rotate(nums = [1,2,3,4,5,6,7], k = 3)
# Output: [5,6,7,1,2,3,4]
