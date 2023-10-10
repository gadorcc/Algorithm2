def mix(s1, s2)
  h_1 = s1.split("").tally.reject{ |k, v| v <= 1 || k == k.upcase}
  h_2 = s2.split("").tally.reject{ |k, v| v <= 1 || k == k.upcase}
  result_hash = Hash.new
  p h_1
  p h_2

  h_1.each do |key, value|
    if h_2.has_key?(key)
      p value
      if value == h_2[key]
        result_hash["="] ||= []
        result_hash["="] << key * value
        h_2.delete(key)
      elsif value > h_2[key]
        result_hash["1"] ||= []
        result_hash["1"] << key * value
        h_2.delete(key)
      end

    else

      result_hash.merge!("1" => key * value)

    end

  end

  h_2.each do |key, value|
    p value
    if h_1.has_key?(key)
      if value == h_1[key]
        result_hash["="] ||= []
        result_hash["="] << key * value

      elsif value > h_1[key]

        result_hash["2"] ||= []
        result_hash["2"] << key * value

      end

    else

      result_hash.merge!("2" => key * value)
      p "aqui #{value}"
    end
  end

  p h_1
  p h_2
  p result_hash
end

mix("Are they here", "yes, they are here")
# mix("looping is fun but dangerous", "less dangerous than coding")
