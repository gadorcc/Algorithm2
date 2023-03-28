def candies_to_buy(amount_of_kids_invited)
  n = amount_of_kids_invited
  kid_array = (1..n).to_a
  x = 0
  j = 1
  while x != amount_of_kids_invited
    kid_array.each do |k|
      if n%k != 0
        n = (amount_of_kids_invited * j)
        j += 1
        x = 0

        break
      else
        x += 1
      end
    end
  end
  p n
end

candies_to_buy(10)
