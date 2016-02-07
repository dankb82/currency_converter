require './currency.rb'
require 'byebug'
class CurrencyConverter
  def initialize(sitfyfrytg)
    @currency_rates = sitfyfrytg



  end

# byebug
  def convert(given_currency, desired_currency)
    # byebug
    new_amount = given_currency.amount * @currency_rates[desired_currency]
    converted_currency = Currency.new(new_amount, desired_currency)
  end
end
