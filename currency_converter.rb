class Currency
  def initialize(currency_code, amount)
    @currency_code = currency_code
    @amount = amount
  end

  def equal(other_amount)
    @currency_code == other_currency && @amount == other_amount
  end


  def amount
    @amount
  end

end

dollar = Currency.new(:USD, 1.00)

puts dollar.amount
