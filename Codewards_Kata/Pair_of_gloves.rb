def gloves(array)
  a_unique = array.uniq
  a_count = []
  a_unique.each do |colour|
    a_count << colour
    a_count << array.count(colour)
  end
  p a_count
  a_pair = []
  a_count.map.with_index do |a, i|
    if i == 0 || i.even?
      a_pair << a
    else
      a_pair << a/2
    end
  end
  p a_pair
  sum = 0
  a_gloves = []
  a_pair.each_with_index do |pair, i|
    if pair.class == Integer && pair > 0
      sum += pair
      a_gloves << a_pair[i-1]
      a_gloves << pair
    end
  end
  p a_gloves
  p sum
end


# input = ["red", "green", "red", "blue", "blue"]
# result = 2 (1 red pair + 1 blue pair)

# input = ["red", "red", "red", "red", "red", "red"]
# result = 3 (3 red pairs)

gloves(["red", "red", "red", "red", "red", "red"])
