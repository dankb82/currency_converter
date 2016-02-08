require './currency.rb'
require 'byebug'
class CurrencyConverter
  def initialize(currency_rates)
    @rates = currency_rates
  end

# byebug
  def convert(given_currency, desired_currency)
    if @rates[desired_currency] > 1.0
      new_amount = (given_currency.amount) * (@rates[desired_currency])
      converted_currency = Currency.new(new_amount, desired_currency)
    elsif
      @rates[desired_currency] <= 1.0
      new_amount = given_currency.amount / @rates[given_currency.currency_code]
      converted_currency = Currency.new(new_amount, desired_currency)
    else
      !@rates.include?[desired_currency]
      raise UnknownCurrencyError
    end
  end
end


  # rates = {:USD => 1.00, :EUR => 0.89, :YEN => 116.8}
