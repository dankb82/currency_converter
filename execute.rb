require "byebug"
require './currency.rb'
require './different_currency_error.rb'
require './unknown_currency.rb'
require './currency_converter.rb'

dollar = Currency.new(10.00, :USD)
dollar2 = Currency.new(3.00, :USD)
dollar3 = dollar * dollar2

#



euro = Currency.new(100, :EUR)
#
currency_rates = {:USD => 1.00, :EUR => 0.89, :YEN => 116.8}
bank = CurrencyConverter.new(currency_rates)
new_money = bank.convert(euro, :YN)

# puts dollar - euro
