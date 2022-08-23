require "todo"

RSpec.describe Todo do
    it "constructs" do
        todo = Todo.new("Walk the dog")
        expect(todo.task).to eq "Walk the dog"
    end

    it "returns error if string is empty" do
        todo = Todo.new("")
        expect { todo.task }.to raise_error "Please enter a valid task"
    end

   
end