def longest_repetition(chars)
  x = chars.chars
  array_1 = [x.first]
  array_2 = []
  if x.count == 0
    return 0
  elsif x.count == 1
    return [array, 1]
  else
    x.each.with_index do |c, i|
      if i > 0 && c == c[i-1]
        p array_1 << c
      else i > 0
        y = array_1.count
        array_2 = [array_1]<< y
      end
    end
  end
  p array_2
end

longest_repetition(("aaaabb"))
# Test.assert_equals(longest_repetition("aaaabb"), ['a', 4])
# Test.assert_equals(longest_repetition("bbbaaabaaaa"), ['a', 4])
# Test.assert_equals(longest_repetition("cbdeuuu900"), ['u', 3])
# Test.assert_equals(longest_repetition("abbbbb"), ['b', 5])
# Test.assert_equals(longest_repetition("aabb"), ['a', 2])
# Test.assert_equals(longest_repetition("ba"), ['b', 1])
# Test.assert_equals(longest_repetition(""), ['', 0])
# Test.assert_equals(longest_repetition("aaabbcccddd"), ['a', 3])
