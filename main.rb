require_relative 'DifferentCurrencyCodeError'
require_relative 'currency'
require_relative 'currency_converter'


hash = {
	"USD" => {"USD" => 1, "EUR" => 1.2},
	"EUR" => {"EUR" => 1, "USD" => 0.8},
	"GBP" => {"GBP" => 1, "USD" => 1, "EUR" => 1}
}


chico = Currency.new("USD", 4)





converter = CurrencyConverter.new(hash)
converter.convert(chico, "EUR")
