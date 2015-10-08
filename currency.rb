class Currency
	attr_accessor(:code, :amount)

	def initialize(code, amount)
		@code = code
		@amount = amount
	end

  def to_s
    "#{@code} #{amount}"
  end

  def equals(obj)
    self.code == obj.code && self.amount == obj.amount
  end

  def plus(obj)
    if self.code == obj.code
      return self.amount + obj.amount
    else 
      return "Not possible."
    end
  end

  def minus(obj)
    if self.code == obj.code && self.amount >= obj.amount
      return self.amount - obj.amount
    else
      return "Not possible."
    end
  end




end

