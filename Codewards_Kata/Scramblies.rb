def scramble(s1,s2)
  a2 = s2.chars
  a1 = s1.chars
  n = 0
  a2.each do |char|
    if s1.include?(char)
      p a1.delete(char)
      n += 1
    end
  end
  if n == s2.length
    return true
  else
    return false
  end
end


scramble('katas',             'steak'   )
