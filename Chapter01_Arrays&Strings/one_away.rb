def oneaway(str1, str2)
  array_str1 = str1.chars
  array_str2 = str2.chars
  if array_str1.count == array_str2.count
    total_array = array_str1.intersection(array_str2)
    p total_array
    # if total_array < 2
    #   p true
    # end
  end
end

oneaway("pale", "ple")
oneaway("pale", "bale")
