def permutation?(str_1, str_2)
  str_1.chars.sort == str_2.chars.sort
end

p permutation?("abcd","dabc")
