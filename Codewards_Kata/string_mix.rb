def mix(s1, s2)
  s1_a = s1.split("").reject{|char| char == char.upcase }
  p s1_a
end


mix("Are they here", "yes, they are here")
mix("looping is fun but dangerous", "less dangerous than coding")
