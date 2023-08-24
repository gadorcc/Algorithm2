def largestSum(arr)
  max_sum,current = arr[0], 0
  arr.each{|n| max_sum = [max_sum, current=[n, current + n].max].max}
  (arr.length ==0 || max_sum <= 0) ? 0 : max_sum


end


largestSum([])
