def remove_duplicates(nums)
    if nums == []
      return 0
    elsif nums.count == 1
      return nums[0]
    elsif nums.uniq == nil
      return nums.count
    else
      return nums.uniq!.count
    end
end

remove_duplicates([1,1,2])
