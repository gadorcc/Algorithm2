def order(words)
  array_words = words.split(" ")
  result = []
  (1..array_words.count).each do |num|
    array_words.each do |word|
      if word.include?(num.to_s)
        result << word
      end
    end
  end
  p result.join(" ")
end

order("is2 Thi1s T4est 3a")
# , "Thi1s is2 3a T4est"

# arr.insert(3, 'apple')  #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
