# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [split the list into an array of separate words]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: set item name to hash key and optional quantity to key value
# output: print grocery list

# Method to remove an item from the list
# input: list, item name
# steps: remove the hash key
# output: new list with removed item

# Method to update the quantity of an item
# input: list, item name, quantity
# steps: update hash value with new quantity
# output: new list with updated quantity

# Method to print a list and make it look pretty
# input: list
# steps: print a wholesome message to the user
# output: pretty list

def grocery_list(items)
  list = {}
  item_list = items.split(' ')
  item_list.each do |item|
    list[item] = 0
  end
p list
end
list = grocery_list("lemonade tomatoes onions ice-cream")

def add_item(list, item, quantity = 0)
  list[item] = quantity
  p list
end


def remove_item(list, item)
  list.delete(item)
  p list
end

def update_item(list, item, quantity)
  list[item] = quantity
  p list
end

update_item(list, "lemonade", 2)
update_item(list, "tomatoes", 3)
update_item(list, "onions", 1)
update_item(list, "ice-cream", 4)
p list
remove_item(list, "lemonade")
p list
update_item(list, "ice-cream", 1)
p list


puts "Wow that's a lot of food you got there!"
list.each do |item, quantity|
  puts "#{item}: #{quantity}"
end



/Release 4: Reflect
1. I learned that writing down what we need to before actually writing our code out is 
a much better process and is less frustrating when the time comes to write out our code.

2. Array would only allow us to list our items in our grocery list but a hash will allow us to give 
a quantity to each items in our list. 

3. A method returns a hash with an updated item and its quantity. 

4. You can pass a default value or what you want to get an output for. 

5. You need to print the method or use a method inside another method.

6. I think I was better able to understand how to use hash and block but still need help how to initially start a problem. /






