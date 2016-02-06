
require 'byebug'
class Currency
  def initialize(amount, currency_code = nil)
  @currency_symbols = {"$" => :USD, "!" => :EUR}
    if @currency_code == nil
       @currency_code = @currency_symbols[amount.to_s[0]]
       amount.to_s[0] = ""
       @amount = amount.to_f
    else
      @amount = amount
      @currency_code = currency_code
    end
  end

  def ==(other)
    if @currency_code == other.amount && @amount == other.currency_code
      true
    else
      false
    end
  end

  def +(other)
    if @currency_code == other.currency_code
      new_amount = @amount + other.amount
      Currency.new(new_amount, @currency_code)
    else false
    end
  end

  def -(other)
    if @currency_code == other.currency_code
      new_amount = @amount - other.amount
      Currency.new(new_amount, @currency_code)
    else false
    end
  end

  def *(other)
    if amount.class == Fixnum || amount.class == Float
       new_amount = @amount * new_amount
       new_amount = new_amount.to_f
       Currency.new(new_amount, @currency_code)
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
dollar = Currency.new(2.00, :USD)
dollar2 = Currency.new(3.00, :USD)
dollar3 = dollar + dollar2
euro = Currency.new(1.00, :EUR)
puts dollar
puts dollar2
puts dollar3


# byebug


#Need instance variables for currency_code, amount, maybe one more?
#Need methods for addition and equals.
