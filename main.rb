require_relative 'DifferentCurrencyCodeError'
require_relative "currency"
#begin
john = Currency.new("USD", 1)
paul = Currency.new("JPY", 4)
george = Currency.new("EUR", 23)
ringo = Currency.new("INR", 32)
eddie = Currency.new("USD", 7)
alex= Currency.new("USD", 7)

puts "John has #{john}", "Paul has #{paul}"
puts "George has #{george}", "Ringo has #{ringo}"
puts "Eddie has #{eddie}", "Alex has #{alex}"
puts ""

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

#rescue DifferentCurrencyCodeError
	#puts "You can't do that shit."
#end