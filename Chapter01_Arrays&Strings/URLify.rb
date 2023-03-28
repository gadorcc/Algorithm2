def urlify(string)
  array_string = string.chars
  array = []
  array_string.each do |char|
    if char == " "
      array << "%20"
    else
      array << char
    end
  end
  return array.join("")

end

urlify("Mr John Smith ")
