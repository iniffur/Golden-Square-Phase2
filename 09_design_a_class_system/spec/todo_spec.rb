require "todo"

RSpec.describe Todo do
    it "constructs" do
    todo = Todo.new("Water the plants")
    expect(todo.task).to eq "Water the plants"
    end

    it "returns an error if string is empty" do
        todo = Todo.new("")
        expect { todo.task }.to raise_error "Please enter a valid task"
    end
end