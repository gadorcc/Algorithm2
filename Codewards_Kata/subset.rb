def est_subsets(arr)
  p arr.size
end

est_subsets([1, 2, 3, 4])


# (1..arr.uniq.size).map { |n| arr.uniq.combination(n).to_a }.flatten(1).size

words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each {|word| str += "#{word} "}