require "byebug"
require './currency.rb'
require './errors.rb'
require './currency_converter.rb'

dollar = Currency.new(2.00, :USD)
dollar2 = Currency.new(3.00, :USD)
dollar3 = dollar * dollar2

# euro = Currency.new(1.00, :EUR)



# euro = Currency.new(100, :EUR)
#
currency_rates = {:USD => 1.00, :EUR => 0.89, :YEN => 116.8}
bank = CurrencyConverter.new(currency_rates)
new_money = bank.convert(euro, :TRS)

# puts new_money.amount
# puts new_money.currency_code
puts dollar3
