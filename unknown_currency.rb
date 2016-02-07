class UnknownCurrencyError
  def initialize(msg="We can't recognize the entered currency", code = "code")
    @code = code
   super(msg)
  end
 end
