def total_var(limit, colours)
  cols_comb = 0
  cols_n = colours.count
  x = 0
  (1..100).each do |n|
    if combinations(n) > limit
      x = n
      break
    end
  end
  return [x,combinations(cols_n)]

end
def combinations(n)
  sum = 0
  (1..n).each {|r| sum += (factorial(n)/factorial(n-r))}
  return sum
end
def factorial(n)
    (1..n).inject(1, :*)
end


total_var(1000,["red","yellow","blue","green","orange", "a"])
# limit = 1000; cols = ["red","yellow","blue","green","orange","silver"]
# Test.assert_equals(total_var(limit, cols), [6, 1956])
