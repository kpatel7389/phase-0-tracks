
class TodoList


    def initialize(items = [])
        @items = items
        items = ["do the dishes", "mow the lawn"]   
    end

    def get_items
    	@items
    end

    def add_item(item)
    	@items << item 
    end

    def delete_item(item)
    	@items.delete(item)
    	item
    end

    def get_item(index)
        @items.at(index)
    end

end

#Driver Code