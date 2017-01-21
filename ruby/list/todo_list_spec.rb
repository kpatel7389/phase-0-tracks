require_relative 'todo_list'


describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }


  it "adds an item to the list" do
    #list.add_item("mop")
    expect(list.add_item('mop')).to eq(["do the dishes", "mow the lawn", "mop"])
  end
  it "deletes an item" do
    #list.delete_item("do the dishes")
    expect(list.delete_item("do the dishes")).to eq(["mow the lawn"])
  end

  it "retrieves an item by index" do
    expect(list.get_items(0)).to eq("do the dishes")
  end
end