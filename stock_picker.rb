def stock_picker(price_array)
	sell_price = price_array.each_with_index.max
	

	buy_price = price_array.each_with_index.min
	puts sell_price[1]
	puts buy_price[1]
end

