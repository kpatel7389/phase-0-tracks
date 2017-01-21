class TodoList 

	def initialize(list)
		puts list
	end

	def add_item(item)
		list << item 
	end

	def delete_item(item)
		list.delete(item)
	end

	def get_items(i)
		list[i]
	end

end

list = ["do the dishes", "mow the lawn"]

