
require 'byebug'
class Currency
  def initialize(currency_code, amount)
    @currency_code = currency_code
    @amount = amount
  end

  def ==(other)
    if @currency_code == other.currency_code && @amount == other.amount
      true
    else
      false
    end
  end

  def +(other)
    if @currency_code == other.currency_code
      @amount = @amount + other.amount
    else false
    end
  end

  def -(other)
    if @currency_code == other.currency_code
      @amount = @amount - other.amount
    else false
    end
  end

  def *(other)
    if @currency_code == other.currency_code
      @amount = @amount * other.amount
    else false
    end
  end

  def currency_code
    @currency_code
  end

  def amount
    @amount
  end

end
dollar = Currency.new(:USD, 2.00)
dollar2 = Currency.new(:USD, 3.00)
euro = Currency.new(:EUR, 1.00)
currency_symbols = {"$" => :USD, "€" => :EUR}

# byebug
puts dollar == dollar2

#Need instance variables for currency_code, amount, maybe one more?
#Need methods for addition and equals.
