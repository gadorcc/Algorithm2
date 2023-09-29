def max_profit(prices)
  max_difference = 0

  prices.each.with_index do |price, index|
    p drop_prices = prices.drop(index+1) if index < (prices.count)-2
    p a = drop_prices.max if index < (prices.count)-2
    p a - price

  end
  # p prices.drop(prices.index(prices.min)).max - prices.min

end


max_profit(prices = [7,6,4,3,1])
# Input: prices = [7,1,5,3,6,4]
