require "todo"
require "todo_list"

RSpec.describe "integration test" do
    it "adds todo items to todo list" do 
        todo_list = TodoList.new
        todo_1 = Todo.new("Clean the bath")
        todo_2 = Todo.new("Empty the dishwasher")
        todo_list.add(todo_1)
        todo_list.add(todo_2)
        expect(todo_list.show_list).to eq [todo_1, todo_2]
    end
end
