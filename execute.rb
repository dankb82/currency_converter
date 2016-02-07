require "byebug"
require './currency.rb'
require './errors.rb'
require './currency_converter.rb'

# dollar = Currency.new(2.00, :USD)
# dollar2 = Currency.new(3.00, :USD)
# dollar3 = dollar + dollar2
# euro = Currency.new(1.00, :EUR)



yen = Currency.new(1168.0, :YEN)
# moneyz = Currency.new("$3000")
# puts moneyz
# puts moneyz.amount
currency_rates = {:USD => 1.00, :EUR => 0.89, :YEN => 116.8}
bank = CurrencyConverter.new(currency_rates)
new_money = bank.convert(yen, :USD)
# byebug
puts new_money.amount
puts new_money.currency_code
# puts new_money.currency_code
# puts new_money.amount == Currency.new(2670, :EUR).amount
