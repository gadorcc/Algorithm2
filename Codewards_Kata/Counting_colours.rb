def total_var(limit, colours)
  # your code here
  colours_final = []
  total = 0
  (1..colours.length).each {|n| total += colours.permutation(n).to_a.count}
  p total
  return []
end



total_var(1000,["red","yellow","blue","green","orange","silver","purple", "hola", "yellow", "yellow", "yellow"])
# limit = 1000; cols = ["red","yellow","blue","green","orange","silver"]
# Test.assert_equals(total_var(limit, cols), [6, 1956])
