def day_trader(prices)
    if prices.max == prices[0]
        return "hin hin"
    end
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])