def mix(s1, s2)
  h_1 = s1.split("").tally.reject{|k,v| v<=1 || k == k.upcase}
  h_2 = s2.split("").tally.reject{|k,v| v<=1 || k == k.upcase}
  result_hash = Hash.new
  h_1.each do |key, value|
    if h_2.has_key?(key)
      if value >= h_2[key]
        p value
      end
    end
  end
  p h_1
  p h_2


end


mix("Are they here", "yes, they are here")
# mix("looping is fun but dangerous", "less dangerous than coding")
