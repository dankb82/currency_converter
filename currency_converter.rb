class Currency
  def initialize (currency_code, amount)
    @currency_code = currency_code
    @amount = amount
  end

  def ==(other_amount)
    if @currency_code == other_currency

    end
  end

  def amount
    @amount
  end

end

dollar = Currency.new(:USD, 1.00)

puts dollar.amount
