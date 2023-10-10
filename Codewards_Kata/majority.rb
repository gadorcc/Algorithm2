def majority_element(nums)
  p hash_nums = nums.tally
  p hash_nums.key(hash_nums.values.max)


end


majority_element(nums = [2,2,1,1,1,2,2])
