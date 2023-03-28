class Integer < Numeric

	def to_bcd
    binary =[]
    binary_total = []
    self < 0 ? n = -(self) : n = self
    if n < 10
      last_binary = n.divmod(2)
      binary << last_binary.last
      while last_binary.first > 0
        next_binary = last_binary.first.divmod(2)
        binary << next_binary.last
        last_binary = next_binary
      end
      if binary.count < 5
        zeros = 4 - binary.count
        zeros.times {binary << 0}
        binary_total << binary.reverse!
      else
        binary_total << binary.reverse!
      end

      x = binary_total
      self < 0 ? x.insert(0, '-') : x
      p y = x.join("")

    else
      num = n.to_s.split(//).map(&:to_i)
      num.each do |n|
        last_binary = n.divmod(2)
        binary << last_binary.last
        while last_binary.first > 0
          next_binary = last_binary.first.divmod(2)
          binary << next_binary.last
          last_binary = next_binary
        end
        if binary.count < 5
          zeros = 4 - binary.count
          zeros.times {binary << 0}
          binary_total << binary.reverse!
          binary_total << " "
          binary = []
        else
          binary_total << binary.reverse!
          binary_total << " "
          binary = []
        end
      end
      x = binary_total
      self < 0 ? x.insert(0, '-') : x
      p y = x.join("").chop
    end
	end

end

-10.to_bcd
