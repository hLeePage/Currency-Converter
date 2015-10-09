require_relative 'DifferentCurrencyCodeError'
require_relative "currency"
#begin
john = Currency.new("USD", 1)
alex = Currency.new("USD", 7)
eddie = Currency.new("USD", 7)
paul = Currency.new("JPY", 4)
george = Currency.new("EUR", 23)
ringo = Currency.new("INR", 32)
chico = Currency.new("$56")
pico = Currency.new("&74")

puts "John has #{john}", "Paul has #{paul}"
puts "George has #{george}", "Ringo has #{ringo}"
puts "Eddie has #{eddie}", "Alex has #{alex}"
puts "Chico has #{chico}"
puts ""

=begin
puts "John = Paul? #{john.===(paul)}"
puts "John = Eddie? #{john.===(eddie)}"
puts "Eddie = Alex? #{eddie.===(alex)}"
puts "John + Eddie = #{john.+(eddie)}"
puts "Eddie + Alex = #{eddie.+(alex)}"
puts "Eddie - Alex = #{eddie.-(alex)}"
puts "John - Eddie = #{john.-(eddie)}"
puts "Ringo - Alex = #{ringo.-(alex)}"
puts "Ringo + Alex = #{ringo.+(alex)}"
puts "John * 3 = #{john.*(3)}"
puts "Paul * 4 = #{paul.*(6)}"
puts ""
=end
puts "Chico = #{chico}", "Pico = #{pico}"

#rescue DifferentCurrencyCodeError
	#puts "You can't do that shit."
#end