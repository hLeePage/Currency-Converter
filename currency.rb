require_relative 'DifferentCurrencyCodeError'

class Currency
	attr_accessor(:code, :amount)

	def initialize(code, amount)
		@code = code
		@amount = amount
	end

  def to_s
    "#{@code} #{amount}"
  end

  def ==(obj)
    self.code == obj.code && self.amount == obj.amount
  end

  def +(obj)
    if self.code == obj.code
      return Currency.new(self.code, self.amount + obj.amount)
    else
      raise DifferentCurrencyCodeError 
    end
  end

  def -(obj)
    if self.code == obj.code && self.amount >= obj.amount
      return Currency.new(self.code, self.amount - obj.amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(num)
    return self.amount * num
  end




end

