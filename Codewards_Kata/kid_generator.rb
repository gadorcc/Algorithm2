def alan_annoying_kid(sentence)
  array = sentence.split(" ")
  array_a = array[array.length-1]
  remove_point = array_a[0..array_a.length-2]

  if array[2] == "didn't"
    p "I don't think you didn't #{array[3]} #{remove_point} today, I think you did #{array[3]} it!"
  else
    (array[2].split("").slice(array[2].length-2, array[2].length-1).join("")) == "ed" ? verb = array[2].split("").slice(0,array[2].length-2).join("") : verb = array[2]
    p "I don't think you #{array[2]} #{remove_point} today, I think you didn't #{verb} at all!"
  end
end


alan_annoying_kid("Today I didn't attempt to hardcode this Kata.")
# "I don't think you didn't attempt to hardcode this Kata today, I think you did attempt it!")
