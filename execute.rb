require './currency.rb'
require './errors.rb'
require './currency_converter.rb'

# dollar = Currency.new(2.00, :USD)
# dollar2 = Currency.new(3.00, :USD)
# dollar3 = dollar + dollar2
# euro = Currency.new(1.00, :EUR)



dollar = Currency.new(2.00, :USD)
moneyz = Currency.new("$3000")
puts moneyz
puts moneyz.amount
rates = {:USD => 1.00, :EUR => 0.89}
bank = CurrencyConverter.new(rates)
new_money =  bank.convert(moneyz, :EUR)
puts new_money.currency_code
puts new_money.amount == Currency.new(2670, :EUR).amount
