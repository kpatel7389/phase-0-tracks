class TodoList 

	attr_reader :items

	def initialize(items = [])
		
		@items = items
	end

	def add_item(item)
		
		@items << item
	end

	def delete_item(item)
		items.delete(item)
		items
	end

	def get_items(i)
		@items.at(i)
	end



end

items = ["do the dishes", "mow the lawn"]

