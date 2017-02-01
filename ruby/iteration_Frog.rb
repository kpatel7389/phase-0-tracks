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
#Array
numbers = [1,2,3,4,5]
numbers.reject! { |num| num < 3}
puts numbers

#Hash
numbers = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}
numbers.reject! { |num, word| num < 3 }
puts numbers

#2. Iterate to meet a condition to keep numbers less than 3
#Array
numbers = [1,2,3,4,5]
numbers.select! { |num| num <3}
puts numbers 

#Hash
numbers = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}
numbers.select! { |num, word| num < 3 }
puts numbers

# 3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
#Array
names = ['Kosha', 'Sunny', 'Harshil']
puts "Here is a list of names: #{names}"
p names

names.delete_if { |name| name.include? 'u'}
puts "Removed name if had the letter 'u' in it. Here is the updated list:"
p names

#Hash

names = {'Kosha' => 27, 'Sunny' => 23, 'Harshil' => 27}
puts "Here is the persons name with age: #{names}"

names.each_with_index do |(name, age), index|
	if index == 2
	puts "Name: #{name}, Age: #{age}"
	end
end
p names


#4. Removes items from data structure until conditional is false
numbers = [1, 2, 3, 4, 5, 6]
numbers.reject! { |num| num.even? == true }
puts numbers





