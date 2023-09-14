def solve(s)
  alpha = ('a'..'z').each.with_index(1).to_h
  vocals = ["a","e","i","o","u"]
  array = []
  sum = 0
  s.split("").map do |letter|
    if vocals.include?(letter)
      array << sum
      sum = 0
    else
      sum += alpha[letter]
    end
  end
  return array.max
end


solve("chruschtschov")
