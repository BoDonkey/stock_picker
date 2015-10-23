def stock_picker(price_array)
	sorted_array = price_array.sort
	highest_day = price_array.index(sorted_array[-1])
	lowest_day = price_array.index(sorted_array[0])
	if highest_day > lowest_day
		puts "Buy at $" + sorted_array[0].to_s + " on day " + lowest_day.to_s
		puts "Sell at $" + sorted_array[-1].to_s + " on day " + highest_day.to_s
		profit = sorted_array[-1] - sorted_array[0]
		period = highest_day - lowest_day
		puts "Total profit: $" + profit.to_s + " in " + period.to_s + " days."
	end

end




