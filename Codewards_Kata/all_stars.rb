def rotate(str)
  array = str.chars
  len = array.length
  final = []
  len.times do
    first_letter = array.take(1)
    array = array[1..len-1]
    array.push(first_letter)
    final << array.flatten.join("")
  end
  return final
end


rotate("Hello")

# // => ["elloH", "lloHe", "loHel", "oHell", "Hello"]

01234
