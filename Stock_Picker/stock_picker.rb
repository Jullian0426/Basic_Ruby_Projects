def stock_picker(prices)
  min_price = prices[0]
  min_price_index = 0
  max_profit = 0
  best_days = []

  prices.each_with_index do |price, index|
    if price - min_price > max_profit
      max_profit = price - min_price
      best_days = [min_price_index, index]
    end

    if price < min_price
      min_price = prices[index]
      min_price_index = index
    end
  end
  best_days
end

test_cases = {
  "Descending Prices" => [10, 9, 8, 7, 6, 5, 4, 3, 2, 1],
  "Ascending Prices" => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
  "Constant Prices" => [5, 5, 5, 5, 5],
  "Mixed Increases and Decreases" => [3, 1, 4, 8, 7, 2, 5],
  "Short Array" => [5, 10],
  "Early Highs and Late Lows" => [9, 12, 6, 3, 15, 8, 6, 1, 16, 10]
}

test_cases.each do |description, prices|
  result = stock_picker(prices)
  puts "#{description}: Buy on day #{result[0]}, Sell on day #{result[1]} - Profit: #{prices[result[1]] - prices[result[0]] if result.size == 2}"
end