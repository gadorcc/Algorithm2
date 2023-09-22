def mix(s1, s2)
  h_1 = s1.split("").tally.reject{|k,v| v<=1 || k == k.upcase}
  h_2 = s2.split("").tally.reject{|k,v| v<=1 || k == k.upcase}

  p h_1


end


mix("Are they here", "yes, they are here")
mix("looping is fun but dangerous", "less dangerous than coding")
