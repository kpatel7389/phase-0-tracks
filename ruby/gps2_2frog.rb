# PAIRING GPS 2.2

# ELECTRONIC GROCERY LIST

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # turn string into an array
  	# use the split(' ') method to do that
  # set default quantity
  	# iterate through the array to set grocery item as key, and default quantity as value
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: set item name to a key in the hash and the quantity to the value
	# inputting that as an array into the hash
# output: hash

# Method to remove an item from the list
# input: list, item name
# steps: delete the key and value that corresponds to the key 
# output: hash

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: update the hash value with the new quantity
# output: hash with updated quantity

# Method to print a list and make it look pretty
# input: list
# steps: user interface print message with values in front keys
# output: printed, pretty list



def grocery_list(groceries)
	needed_groceries = {}
	groceries = groceries.split(' ')
	groceries.each do |item|
		needed_groceries[item] = 1
	end
	#p needed_groceries
	pretty_list(needed_groceries)
end

def grocery_adder(needed_groceries, grocery_item, quantity = 1)
	needed_groceries[grocery_item] = quantity
end

def grocery_deleter(needed_groceries, grocery_item)
	needed_groceries.delete(grocery_item)
end

def quantity_update(needed_groceries, grocery_item, new_quantity)
	needed_groceries[grocery_item] = new_quantity
end

def pretty_list(needed_groceries)
	needed_groceries.each do |item, quantity|
		puts "#{quantity} #{item}"
	end
end

# list = grocery_list("carrots potatoes chicken pasta")

# grocery_adder(list, "noodles", 4)
# grocery_adder(list, "sauce")
# p list

# grocery_deleter(list, "noodles")
# p list

# quantity_update(list, "carrots", 8)
# p list

# pretty_list(list)

list1 = grocery_list('lemonade tomatoes onions ice_cream')
quantity_update(list1, 'lemonade', 2)
quantity_update(list1, 'tomatoes', 3)
quantity_update(list1, 'ice_cream', 4)
p list1 

grocery_deleter(list1, 'lemonade')
p list1

quantity_update(list1, 'ice_cream', 1)
p list1

pretty_list(list1)

# Release 4: Reflect
# 1. I learned that writing down what we need to before actually writing our code out is 
# a much better process and is less frustrating when the time comes to write out our code.

# 2. Array would only allow us to list our items in our grocery list but a hash will allow us to give 
# a quantity to each items in our list. 

# 3. A method returns a hash with an updated item and its quantity. 

# 4. You can pass a default value or what you want to get an output for. 

# 5. You need to print the method or use a method inside another method.

# 6. I think I was better able to understand how to use hash and block but still need help how to initially start a problem. 















