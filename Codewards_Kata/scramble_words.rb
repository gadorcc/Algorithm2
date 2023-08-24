def scramble_words(words)
  # array = words.split(" ")
  # p array
  # subarray = []
  # array.each {|word| subarray << word.chars}
  # p subarray
  # # array_word = []
  # array_to_sort = []
  # final_array_word = []
  # subarray.each_with_index do |index, letter|
  #   if index==0 || index==subarray.length-1
  #     array_word << letter
  #   else
  #     array_to_sort << letter
  #   end

  #   final_array_word << array_word[0]
  # end
  # p final_array_word
  if words == ""
    return ""
  else
    array = words.split(" ")
    subarray = []
    array.each {|word| subarray << word.chars}
    p subarray
    array_result = []
    new_array = []
    place = 0
    punct = ""
    result_array = []
    subarray.each do |array|

      array_result = []
      new_array = []
      place = 0
      punct = ""
      array[1..array.length-2].each_with_index do |letter, index|
        if letter.match?(/[[:alpha:]]/) == false
          place = index
          punct = letter
        else
          new_array << letter
        end
      end

      final_array = new_array.sort
      if place > 0
        final_array.insert(place,punct)
      end
      result = final_array.push(array[array.length-1])
      if array.length > 1
        p array.length
        result.insert(0, array[0])
      end
      result_array << result

    end
    p result_array.flatten.join("")

  end

end


scramble_words('-dcba')
