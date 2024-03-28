require "httparty"

response = HTTParty.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd")

names = response.map {|x| x["name"]}
price = response.map {|x| x["current_price"]}
market = response.map {|x| x["market_cap_rank"]}
cap = name = response.map {|x| x["market_cap"]}
ar = []

(0..name.length()).each do |i|
    ar += [[names[i], price[i], market[i], cap[i]]]
end

(0...5).each do |i|
    print(ar[i].join(" "))
    print("\n")
end

