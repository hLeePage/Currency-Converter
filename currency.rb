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





end

