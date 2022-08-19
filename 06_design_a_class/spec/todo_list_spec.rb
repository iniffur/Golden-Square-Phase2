require "todo_list"

RSpec.describe ToDoList do
    it "Returns an error if the string is empty" do
        todo_list = ToDoList.new
        expect{ todo_list.add_to_list("") }.to raise_error "Please enter a valid string"
    end

    it "Adds item to list array and returns array if list item is inputted" do
        todo_list = ToDoList.new
        expect(todo_list.add_to_list("Walk the dog")).to eq ["Walk the dog"]
    end

    it "Adds item to list array and returns array if list item is inputted" do
        todo_list = ToDoList.new
        todo_list.add_to_list("Walk the dog")
        expect(todo_list.add_to_list("Walk the dog")).to eq ["Walk the dog", "Walk the dog"]
    end

    it "Removes item from list array if input is completed" do
        todo_list = ToDoList.new
        todo_list.add_to_list("Walk the dog")
        todo_list.add_to_list("Walk the cat")
        expect(todo_list.remove_from_list("Walk the cat")).to eq "Task 'Walk the cat' has been completed"
    end

    it "Checks if removed item is on the todo list" do
        todo_list = ToDoList.new
        todo_list.add_to_list("Walk the dog")
        expect{ todo_list.remove_from_list("Walk the cat") }.to raise_error "Task is not on the to do list"
    end
end