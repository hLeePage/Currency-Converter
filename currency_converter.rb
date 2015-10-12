require_relative 'DifferentCurrencyCodeError'
require_relative 'currency'

class CurrencyConverter
  def initialize hash
  @rates = hash
  end

  def convert(currency, target_code)
  rate = @rates[currency.code][target_code]
  puts Currency.new(target_code, currency.amount * rate)
  end

end


