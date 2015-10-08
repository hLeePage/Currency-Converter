class Currency
	attr_accessor :code, :val
  
	def initialize code, val
		@code = code
		@val = val
	end

  def to_s
    "#{@code}, #{val}"
  end
end

