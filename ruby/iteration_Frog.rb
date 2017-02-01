#Release 1

cars = {'BMW' => 'X5', 'Toyota' => 'Camry', 'Nissan' => 'Quest'}
cars2 =[]

p cars 

cars.each do |make, model|
	puts "The make and model of this car is: #{make}/#{model}"
end

p cars 

cars2 = cars.map do |make, model|
end

p cars2

#Release 2

#1. Iterate to meet a condition to delete any number less than 3 

numbers = [1,2,3,4,5]
numbers.reject! { |num| num < 3}
puts numbers


