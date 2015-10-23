def stock_picker(price_array)
	init_sell_price = price_array.each_with_index.max
	init_buy_price = price_array.each_with_index.min
	if init_sell_price[1] > init_buy_price[1]
		puts "Buy at $" + init_buy_price[0].to_s + " on day" + init_buy_price[1].to_s
		puts "Sell at $" + init_sell_price[0].to_s + " on day" + init_sell_price[1].to_s
		profit = init_sell_price[0]-init_buy_price[0]
		period = init_sell_price[1]-init_buy_price[1]
		puts "Total profit: $" + profit.to_s + " in " + period.to_s + " days."
	end
end




