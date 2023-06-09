# def scramble(s1,s2)
#   a2 = s2.chars
#   a1 = s1.chars
#   n = 0
#   a2.each do |char|
#     if s1.include?(char)
#       p a1.delete(char)
#       n += 1
#     end

#   end
#   if n == s2.length
#     return true
#   else
#     return false
#   end
# end

def scramble(s1,s2)
  a2 = s2.chars
  a1 = s1.chars
  p h2 = Hash.new(0).tap { |h| a2.each { |char| h[char] += 1 } }
  p h1 = Hash.new(0).tap { |h| a1.each { |char| h[char] += 1 } }
end
s1 = "abcdefghijklmnopqrstuvwxyz" * 100_000
s2 = "zyxcba" * 90_000
scramble('cedewaraaossoqqyt', 'codewars'  )
