def dig_pow(n, p)
  n_digits = n.to_s.chars.map(&:to_i)
  sum_n = 0
  n_digits.map do |x|
    sum_n += x**p
    p += 1
  end
  result = sum_n.fdiv(n)


  p (result - result.round) == 0 ? result.to_i : -1

end


dig_pow(89, 1)
dig_pow(92, 1)
dig_pow(46288, 3)
