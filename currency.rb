require_relative 'DifferentCurrencyCodeError'

class Currency
	attr_accessor(:code, :amount)

	def initialize(code, amount = 0)
		@code = code
		@amount = amount

    symbols = {'$' => 'USD', '£' => 'GBP', '€' => 'EUR'}

    if @code[0] =~ /^[\W]$/
      @amount = @code.slice(1..-1)
      @code = symbols[@code[0]]     
    end

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
      return "No no."
      #raise DifferentCurrencyCodeError 
    end
  end

  def -(obj)
    if self.code == obj.code && self.amount >= obj.amount
      return Currency.new(self.code, self.amount - obj.amount)
    else
      return "No no."
      #raise DifferentCurrencyCodeError
    end
  end

  def *(num)
    return Currency.new(self.code, (self.amount.to_i * num).to_s)
  end
end