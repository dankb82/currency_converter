class Error
  def initialize (msg = " ", code = "code")
    @currency_code = code
    super(msg)
  end
  def CurrencyCodeError()
  end
end
