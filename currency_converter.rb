
require 'byebug'
class Currency
  def initialize(currency_code, amount)
    @currency_code = currency_code
    @amount = amount
  end

  def ==(other_currency, other_amount)
    if @currency_code == other_currency && @amount == other_amount
      true
    else
      false
    end
  end

  def +(other)
    if @currency_code == other.currency_code
      @amount = @amount + other.amount
    end
  end

  def -(other)
    if @currency_code == other.currency_code
      @amount = @amount - other.amount
    end
  end

  def currency_code
    @currency_code
  end

  def amount
    @amount
  end

end
dollar = Currency.new(:USD, 1.00)
dollar2 = Currency.new(:USD, 3.00)
euro = Currency.new(:EUR, 1.00)
# byebug
puts dollar2 - dollar

#Need instance variables for currency_code, amount, maybe one more?
#Need methods for addition and equals.
