def stringy(size)
  result = []
  size.times do |num|
    p num
    if num.odd?
      result << 0
    else
      result << 1
    end
  end
  return result.join("")
end

stringy(5)
