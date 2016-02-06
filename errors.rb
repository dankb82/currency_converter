class = Error
  def initialize(msg = "You've entered two different currencies", code = "code")
    @currency_code = code
    super(msg)
  end
end
