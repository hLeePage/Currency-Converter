require_relative "currency"

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
puts "John = Paul? #{john.equals(paul)}"
puts "John = Eddie? #{john.equals(eddie)}"
puts "Eddie = Alex? #{eddie.equals(alex)}"
puts "John + Eddie = #{john.plus(eddie)}"
puts "Eddie + Alex = #{eddie.plus(alex)}"
puts "Ringo + Alex = #{ringo.plus(alex)}"
puts "John - Eddie = #{john.minus(eddie)}"
puts "Eddie - Alex = #{eddie.minus(alex)}"
puts "Ringo - Alex = #{ringo.minus(alex)}"
