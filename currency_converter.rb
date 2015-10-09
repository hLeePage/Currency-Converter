require_relative 'DifferentCurrencyCodeError'
require_relative 'currency'
class CurrencyConverter
	def initialize hash
		@rates = hash
	end

	def convert(currency, target_code)
		rate = @rates[currency.code][target_code]
		puts "The rate is #{rate}"
	end

end