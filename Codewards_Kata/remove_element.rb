def remove_element(nums, val)

  nums.reject! { |num| num == val}
    nums == []? 0 :  nums.count

end

remove_element(nums = [2], val = 3)
