def stock_picker(price_array)
	traverse_sum = price_array[1] - price_array[0]
	puts traverse_sum
	array_size = price_array.length-1
	puts array_size
	min_element = price_array[0]
	puts min_element
	max_day = 1

	for i in 1..array_size
		puts i
		if (price_array[i] - min_element) > traverse_sum
			traverse_sum = price_array[i] - min_element
			max_day = i
		end
		if price_array[i] < min_element && i < array_size
			min_element = price_array[i]
			min_day = i
		end
	end

	if traverse_sum <= 0
		return "No trades possible"
	end
	puts "Buy at $" + price_array[min_day].to_s + " on day " + min_day.to_s
		puts "Sell at $" + price_array[max_day].to_s + " on day " + max_day.to_s
		profit = price_array[max_day] - price_array[min_day]
		period = max_day - min_day
		puts "Total profit: $" + profit.to_s + " in " + period.to_s + " days."
end
