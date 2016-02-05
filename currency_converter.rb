
require 'byebug'
class Currency
  def initialize(currency_code, amount)
  currency_symbols = {"$" => :USD, "€" => :EUR}
    if @currency_code == nil
       @currency_code = @amount[0]
       @amount = @amount[1..-1].to_f
    else
      @amount = amount.to_f
      @currency_code = currency_code.to_sym
    end

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
      dollar3 = @amount + other.amount
      Currency.new(@currency_code, dollar3)
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
dollar3 = dollar + dollar2

euro = Currency.new(:EUR, 1.00)
currency_symbols = {"$" => :USD, "€" => :EUR}
dollar3 = dollar + dollar2
puts dollar.amount
puts dollar2
puts dollar3

# byebug


#Need instance variables for currency_code, amount, maybe one more?
#Need methods for addition and equals.
