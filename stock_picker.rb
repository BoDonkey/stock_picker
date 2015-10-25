def stock_picker(prices)
	current_best_profit = prices[1] - prices.first
	current_best_dates = [0,1]
	prices.each_with_index do |buy_price, buy_day|
		(buy_day...prices.length).each_with_index do |sell_day|
			sell_price = prices[sell_day]
			if (sell_price - buy_price) > current_best_profit
				current_best_profit = sell_price - buy_price
				current_best_dates = [buy_day, sell_day]
			end
		end
	end
	if current_best_profit <= 0
		return "No trades possible"
	end
	buy_day = current_best_dates[0]
  sell_day = current_best_dates[1]
  puts "Buy at $" + prices[buy_day].to_s + " on day " + buy_day.to_s
    puts "Sell at $" + prices[sell_day].to_s + " on day " + sell_day.to_s
    period = sell_day - buy_day
    puts "Total profit: $" + current_best_profit.to_s + " in " + period.to_s + " days."

end
