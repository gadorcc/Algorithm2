def cipher(string, keyword)
  key = keyword.chars.uniq
  alpha = ("a".."z").to_a << " "
  key_a = (key << alpha).flatten.uniq
  # final_k_array2 = final_k_array.flatten.uniq
  string_index_array = []
  string_array = string.downcase.chars
  string_array.each do |s|
    string_index_array << alpha.index(s) if alpha.include?(s)
  end
  p string_index_array
  array = []
  string_index_array.each do |i|
    array << key_a[i]
  end
  p array.join()
end

cipher("Welcome home","secret")
````
