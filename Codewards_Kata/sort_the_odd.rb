def sort_array(source_array)
  odd_index = []
  odd_sort = []
  final = []
  n = 0
  source_array.map.with_index do |num,index|
    (odd_index << index && odd_sort << num) if num.odd?
  end
  a = odd_sort.sort!

  source_array.map.with_index do |num,index|
    if odd_index.include?(index)
      final << a[n]
      n += 1
    else
      final << num
    end
  end


  return final
end


sort_array([2, 22, 37, 11, 4, 1, 5, 0])


# a_count.map.with_index do |a, i|
#   if i == 0 || i.even?
#     a_pair << a
#   else
#     a_pair << a/2
#   end
# end
